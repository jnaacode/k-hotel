package kHotel.member.model.service;

import static kHotel.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import kHotel.common.Util;
import kHotel.member.model.dao.JMemberDAO;
import kHotel.member.model.vo.Member;
import kHotel.member.model.vo.Reservation;
import kHotel.member.model.vo.Review;
import kHotel.member.model.vo.ReviewImg;

public class JMemberService {

	JMemberDAO dao = new JMemberDAO();
	
	/** 회원가입 Service
	 * @param member
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Member member) throws Exception {
		
		Connection conn = getConnection();
		
		
		int result = dao.signUp(conn, member);
		
		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		
		close(conn);
		
		return result;
	}

	/** 리뷰 등록 Service
	 * @param image
	 * @param rv
	 * @param tag6 
	 * @param tag5 
	 * @param tag4 
	 * @param tag3 
	 * @param tag2 
	 * @param tag1 
	 * @return result
	 * @throws Exception
	 */
	public int reviewUpdate( Review rv , ReviewImg image, String tag1, String tag2, String tag3, String tag4, String tag5, String tag6) throws Exception {
		
		Connection conn = getConnection();
		
		
		
		
		rv.setContent( Util.XSSHanding(rv.getContent()));
		
		// 리뷰 게시글 등록
		int result = dao.reviewUpdate(conn, rv );
		
		// 작성된 리뷰 게시글 번호 얻어오기
		int boardNo = dao.nextBoardNo(conn, rv);
		
		rv.setBoardNo(boardNo);
		
		if(result > 0) {
			
			// 리뷰 이미지 삽입
			result = dao.reviewImg( conn, image, rv);
			
			// 태그 삽입
			result = dao.tagUpdate1(conn, rv , tag1 ) ;
			result = dao.tagUpdate2(conn, rv , tag2  ) ;
			result = dao.tagUpdate3(conn, rv , tag3 ) ;
			result = dao.tagUpdate4(conn, rv , tag4  ) ;
			result = dao.tagUpdate5(conn, rv , tag5  ) ;
			result = dao.tagUpdate6(conn, rv , tag6  ) ;
		}
		
		
		if(result > 0) commit(conn);
		else		   rollback(conn);
		
		close(conn);
		
		return result;
	}

	/** 이전 예약 Service
	 * @param memberNo
	 * @return rv
	 * @throws Exception
	 */
	public List<Reservation> reservation(int memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		 List<Reservation> rvList = dao.reservation(conn, memberNo);
		
		 
		close(conn);
				
		return rvList;
	}

	/** 현재 예약 Service
	 * @param memberNo
	 * @return rv
	 * @throws Exception
	 */
	public List<Reservation> reservationUp(int memberNo) throws Exception {
		Connection conn = getConnection();
		
		 List<Reservation> rvList = dao.reservationUp(conn, memberNo);
		
		 
		close(conn);
				
		return rvList;
	}

	/** 현재 예약 취소 Service
	 * @param bookNo 
	 * @param loginMember
	 * @return result
	 * @throws Exception
	 */
	public int reviewCancel(int bookNo, Member loginMember) throws Exception {
		
		Connection conn = getConnection();
		
		
		
		// memberNo 얻어오기
		int memberNo = dao.getMemberNo(conn, loginMember);
		System.out.println(memberNo +"얻어온 member");
		
		// 결제 정보 지우기
		int result = dao.deleteCalculate(conn ,memberNo, bookNo);
		
		System.out.println("됐으면 1이여");
		
		// 현재 예약 취소
	     result = dao.reviewCancel(conn, memberNo, bookNo );
	    System.out.println(result + "삭제 되면 1 아니면 0");
	    
	    if(result > 0 ) commit(conn);
	    else            rollback(conn);
	    
	    close(conn);
	    		
		return result;
	}




}
