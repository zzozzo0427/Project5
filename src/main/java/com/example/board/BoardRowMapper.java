package com.example.board;

import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {

    public BoardVO mapRow(ResultSet rs, int RowNum) throws SQLException{
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setCategory(rs.getString("category"));
        vo.setBrand(rs.getString("brand"));
        vo.setProduct(rs.getString("product"));
        vo.setTitle(rs.getString("title"));
        vo.setContent(rs.getString("content"));
        vo.setRating(rs.getFloat("rating"));
        vo.setWriter(rs.getString("writer"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}