package shop.mtcoding.test.model;

import java.sql.Timestamp;

import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Board {
    private int id;
    private String title;
    private int userId;
    private Timestamp createdAt;
}