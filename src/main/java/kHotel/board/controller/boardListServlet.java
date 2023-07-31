package kHotel.board.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kHotel.board.model.service.HBoardService;


//@WebServlet("/board")
public class boardListServlet extends HttpServlet{
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      try {
         
         int type = Integer.parseInt(req.getParameter("type"));
         
         
         int cp = 1;
         
         if(req.getParameter("cp") != null) {
            cp = Integer.parseInt(req.getParameter("cp"));
         }
               
         
         HBoardService service = new HBoardService();
         
         Map<String, Object> map = null;
         
         if(req.getParameter("key") == null) {
            
            map = service.selectBoardList(type,cp);
            
         } else {
            String key = req.getParameter("key");
            String query = req.getParameter("query");
            
//            map = service.searchBoardList(type, cp, key, query);
            
         }
         
         
         req.setAttribute("map", map);
         
         String path = "/WEB-INF/views/board/boardList.jsp";
         
         RequestDispatcher dispatcher = req.getRequestDispatcher(path);
         dispatcher.forward(req, resp);
         
      } catch (Exception e) {
         e.printStackTrace();
      }
      
   }

}