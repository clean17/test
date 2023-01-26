package shop.mtcoding.test.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
    
    public List<User> findAll();
    public User findByUsernameAndPassword();
    public int createUser();
    public int updateUser();
    public int deleteUser();
}
