package shop.mtcoding.test.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardService {
    
    @Transactional
    public int 게시글수정(){
    
        return 1;
    }

    @Transactional
    public int 게시글삭제(){
        
        return 1;
    }
}
