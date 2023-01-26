package shop.mtcoding.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.test.model.User;
import shop.mtcoding.test.model.UserRepository;

@Service
public class UserService {
    
    @Autowired
    private UserRepository userRepository;

    @Transactional
    public int 회원정보수정(String password, String email, int pricipalId, int updateId){
        // pricipalId = 세션아이디  // updateId = 회원정보수정폼의 아이디
        User updateUser = userRepository.findById(updateId);
        if( updateUser == null ) return -1;

        if( pricipalId != updateUser.getId() ) return -1;

        int result = userRepository.updateUser(password, email, updateId);
        if ( result != 1 ) return -1;
        
        return 1;
    }
}
