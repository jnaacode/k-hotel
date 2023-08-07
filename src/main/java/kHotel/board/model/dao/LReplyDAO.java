package kHotel.board.model.dao;

import static kHotel.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import kHotel.board.model.vo.Reply;


public class LReplyDAO {
	
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Properties prop;
	
	// 기본 생성자
	public LReplyDAO() {
		try {
			prop = new Properties();
			
			String filePath =   LReplyDAO.class.getResource("/kHotel/sql/LReply-sql.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** 댓글 목록 조회 DAO
	 * @param conn
	 * @param boardNo
	 * @return rList
	 * @throws Exception
	 */
	public List<Reply> selectReplyList(Connection conn, int boardNo) throws Exception{
		
		List<Reply> rList = new ArrayList<Reply>();
		
		try {
			
			String sql = prop.getProperty("selectReplyList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Reply reply = new Reply();
				
				reply.setMemberId( rs.getString("MEMBER_ID"));
				reply.setCreateDt(rs.getString("CREATE_DT"));
				reply.setReplyContent(rs.getString("REPLY_CONTENT"));
				reply.setMemberNo(rs.getInt("MEMBER_NO"));
				reply.setBoardNo(rs.getInt("BOARD_NO"));
				reply.setReplyNo(rs.getInt("REPLY_NO"));
				
				
				
				rList.add(reply);
				
			}
			
			
		}finally {
			close(rs);
			close(pstmt);
			
		}
		
		
		
		return rList;
	}

	
	
	/** 댓글 작성 DAO
	 * @param conn
	 * @param reply
	 * @return
	 * @throws Exception
	 */
	public int insertReply(Connection conn, Reply reply) throws Exception{
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("insertReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, reply.getReplyContent());
			pstmt.setInt(2, reply.getMemberNo());
			pstmt.setInt(3, reply.getBoardNo());
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	
	/** 댓글 삭제 DAO
	 * @param conn
	 * @param replyNo
	 * @return result
	 * @throws Exception
	 */
	public int deleteReply(Connection conn, int replyNo) throws Exception{
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("deleteReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, replyNo);
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
	}

	/** 댓글 수정 DAO
	 * @param conn
	 * @param replyNo
	 * @param replyContent
	 * @return result
	 * @throws Exception
	 */
	public int updateReply(Connection conn, int replyNo, String replyContent) throws Exception{
		
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("updateReply");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, replyContent);
			pstmt.setInt(2, replyNo);
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}
	
	
	
	
	

}
