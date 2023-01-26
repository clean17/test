package shop.mtcoding.test.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserRepository {
    
    public List<User> findAll();
    public User findByUsernameAndPassword(
        @Param("username") String username,
        @Param("password") String password
    );
    public int createUser(
        @Param("username") String username,
        @Param("password") String password,
        @Param("email") String email
    );
    public int updateUser(
        @Param("password") String password,
        @Param("email") String email,
        @Param("id") int id
    );
    public int deleteUser(int id);
}
