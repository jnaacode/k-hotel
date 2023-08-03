package kHotel.board.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kHotel.admin.model.vo.LAdminReport;
import kHotel.board.model.service.ReviewService;
import kHotel.board.model.vo.Board;
import kHotel.board.model.vo.Reply;
import kHotel.member.model.vo.Member;

@WebServlet("/board/review/*")
public class ReviewShowServelt extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = uri.substring((contextPath + "/board/review/").length());
		ReviewService service = new ReviewService();
		int bookNo = Integer.parseInt(req.getParameter("bookNo")); 
		

		try {

			if (command.equals("show")) {

				
				int cp = 1;

				if (req.getParameter("cp") != null) {
					cp = Integer.parseInt(req.getParameter("cp"));
				}

				Map<String, Object> map = service.boardReview(cp);

				String path = "/WEB-INF/views/board/reviewShow.jsp";

				req.setAttribute("map", map);

				System.out.println(map);

				RequestDispatcher dispatcher = req.getRequestDispatcher(path);

				dispatcher.forward(req, resp);

			}

			if (command.equals("declar")) {

				String replyContent = req.getParameter("Ppcontent");
				int boardNo = Integer.parseInt(req.getParameter("boardNo"));
				int memberNo = Integer.parseInt(req.getParameter("memberNo"));

				LAdminReport report = new LAdminReport();
				report.setBoardNo(boardNo);
				report.setMemberNo(memberNo);
				report.setReportContent(replyContent);

				int result = service.declar(report);

				System.out.println(result);

				resp.getWriter().print(result);

			}
			
			if(command.equals("delete"));
			
			HttpSession session = req.getSession();
			
			Member loginMember = (Member) session.getAttribute("loginMember");
			
			int boardNo = Integer.parseInt(req.getParameter("boardNo"));
			
			int result = service.deleteReview(loginMember,boardNo);			

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
