package shop.mtcoding.test.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test.model.User;
import shop.mtcoding.test.model.UserRepository;
import shop.mtcoding.test.service.UserService;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @Autowired
    private UserService userService;

    @GetMapping("/loginForm")
    public String loginForm() {
        // 아이디 체크 쿠키 확인
        return "user/loginForm";
    }

    @GetMapping("/joinForm")
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
    public String login(String username, String password, String remember,
        HttpServletResponse response){
            
        User principal = userRepository.findByUsernameAndPassword(username, password);
        if ( principal == null ) {
            return "redirect:/notfound";
        }else{
            if( remember == null ) {
                remember = "";
            }
            if( remember.equals("on")){
                System.out.println("디버그 : " + username);
                Cookie cookie = new Cookie("remember", username);
                response.addCookie(cookie);
            }else{
                Cookie cookie = new Cookie("remember", "");
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
        session.setAttribute("principal", principal);
        return "redirect:/";
    }

    @GetMapping("/user/update")
    public String updateForm(){
        User principal = (User) session.getAttribute("principal");
        if ( principal == null ) return "redirect:/notfound";
        return "user/updateForm";
    }

    @PostMapping("/user/update")
    public String userUpdate(String password, String email, int updateId){
        User principal = (User) session.getAttribute("principal");
        if ( principal == null ) return "redirect:/notfound";

        int result = userService.회원정보수정(password, email, principal.getId(), updateId);
        if ( result != 1 ) return "redirect:/notfound";

        return "redirect:/" ;
    }

}
