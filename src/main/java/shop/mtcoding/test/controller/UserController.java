package shop.mtcoding.test.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test.model.User;
import shop.mtcoding.test.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("loginForm")
    public String loginForm() {
        // 아이디 체크 쿠키 확인
        return "user/loginForm";
    }

    @GetMapping("joinForm")
    public String joinForm(){
        return "user/joinForm";
    }

    @GetMapping("/logout")
    public String logout(){
        session.invalidate();
        return "redirect:/";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email){
        int result = userRepository.createUser(username, password, email);
        if ( result != 1 ) return "redirect:/notfound";

        return "redirect:/loginForm";
    }

    @PostMapping("/login")
    public String login(String username, String password){
        User principal = userRepository.findByUsernameAndPassword(username, password);
        if ( principal == null ) return "redirect:/notfound";
        session.setAttribute("principal", principal);
        return "redirect:/";
    }


}
