package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    BoardDAO userDAO;
    public BoardVO getUser(BoardVO vo) {
        return userDAO.getUser(vo);
    }
}
