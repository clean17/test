package shop.mtcoding.test.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardRepository {
    
    public List<Board> findAll();
    public Board findByUserId();
    public int createBoard();
    public int updateBoard();
    public int deleteBoard();
}
