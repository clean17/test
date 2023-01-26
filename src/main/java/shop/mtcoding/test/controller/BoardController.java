package shop.mtcoding.test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.test.model.Board;
import shop.mtcoding.test.model.BoardRepository;
import shop.mtcoding.test.model.User;
import shop.mtcoding.test.service.BoardService;

@Controller
public class BoardController {

    @Autowired
    private HttpSession session;

    @Autowired
    private BoardService service;

    @Autowired
    private BoardRepository boardRepository;

    @GetMapping("/")
    public String main(Model model) {
        List<Board> boardList = boardRepository.findAll();
        model.addAttribute("boardList", boardList);
        return "board/main";
    }

    @GetMapping("/user/board")
    public String userBoard(Model model) {
        // 로그인 확인
        User principal = (User) session.getAttribute("principal");
        if ( principal == null ) return "redirect:/notfound";

        List<Board> boardList = boardRepository.findByUserId(principal.getId());
        model.addAttribute("boardList", boardList);
        return "board/userBoard";
    }
    
    @GetMapping("/board/insert")
    public String writeboard(){
        // 글쓰기 구현 예정
        return "";
    }

}
