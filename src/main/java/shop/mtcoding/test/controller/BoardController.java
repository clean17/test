package shop.mtcoding.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    @GetMapping("/")
    public String main() {
        return "board/main";
    }

    @GetMapping("/userboard")
    public String userBoard() {
        // 로그인 확인
        // 서비스 호출
        return "board/userBoard";
    }

}
