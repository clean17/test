package shop.mtcoding.test.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardRepository {
    
    public List<Board> findAll();
    public List<Board> findByUserId(int userId);
    public int createBoard(
        @Param("title") String title,
        @Param("userId") int userId
    );
    public int updateBoard(
        @Param("title") String title,
        @Param("userId") int userId
    );
    public int deleteBoard(int userId);
}
