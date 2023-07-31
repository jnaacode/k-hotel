package kHotel.board.model.service;

import static kHotel.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kHotel.board.model.dao.HBoardDAO;
import kHotel.board.model.vo.Board;
import kHotel.member.model.vo.LPagination;

public class HBoardService {
	
	private HBoardDAO dao = new HBoardDAO();

	/** 게시글 이름 조회
	 * @param type
	 * @param cp
	 * @return map
	 * @throws Exception
	 */
	public Map<String, Object> checkBoardList(int type, int cp) throws Exception{
		
		Connection conn = getConnection();
		
		String boardName = dao.selectBoardName(conn, type);
		
		int listCount = dao.getListCount(conn, type);
		
		LPagination pagination = new LPagination(cp, listCount);
		
		List<Board> boardList = dao.checkBoardList(conn, pagination, type);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("boardName", boardName);
		map.put("pagination", pagination);
		map.put("boardList", boardList);
		
		close(conn);
		
		
		return map;
	}

	public Map<String, Object> searchBoardList(int type, int cp, String key, String query) {
		// TODO Auto-generated method stub
		return null;
	}

}