package kHotel.common;


import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCTemplate {

	/** DB연결, JDBC 자원 반환, 트렌잭션 제어 같은
	 * 반복적으로 사용되는 JDBC 관련 코드를 모아둔 클래스 
	 * 
	 * get connection () 메소드
	 * 
	 * close ( Connection | Statement | ResultSet) 메소드
	 * --> PropearedStatement 는 Statement 의 자식이므로 
	 *     매개변수 다형성으로 한번에 처리 
	 * 
	 * commit(Connection)
	 * rollback(Connection)
	 * 
	 * */
	
	// 필드 
	private static Connection conn; // 초기값 null
//	== private static Connection conn = null; 초기값 null 똑같음
	
	// 메소드 
	
	// DB 연결 정보를 담고 있는 Connection 객체 반환 메소드 
	public static Connection getConnection() { //반환형이 Connection이고 getConnection()이름을 가진다
		
		try {
			
			// JNDI(Java Naming(자바에서 부를 이름) and Directory(폴더) Interface(접점) API) 자바에서 특정 폴더를 부르는 방법
			// - 디렉토리에 접근해서 사용하는 Java API
			// - 애플리케이션(프로그램, 웹앱)은 JNDI를 이용해서 파일 또는 서버 Resource를 찾을 수 있음
			
			Context initContext = new InitialContext();
			
			// servers -> context.xml 파일 찾기                //자바에 연결된 모두 정보 
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			
			// DBCP 세팅의 <Resource> 태그를 찾아 DataSource 형식의 객체로 얻어오기 
			// DataSource : Connection pool을 구현하는 객체(Connection)얻어 오기가 가능하다. 
			DataSource ds =(DataSource)envContext.lookup("jdbc/oracle");
			
			conn =ds.getConnection();
			conn.setAutoCommit(false);
					
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return conn;
	}
	
	// close() 메소드 작성
	
	// Conncection 반환 메소드,
	public static void close(Connection conn) {
		
		try {
			// 참조하는 Connection이 있으면서 닫혀있지 않은 경우
			if(conn != null&& !conn.isClosed()) {
				// conn.isClosed : 닫혀있으면true 
				conn.close();
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	// Statement(부모) PreparedStatement(자식) 반환 메소드(다형성 적용)
	public static void close(Statement stmt) {
		
		try {
			// 참조하는 Statement가 있으면서 닫혀있지 않은 경우
			if(stmt != null && !stmt.isClosed()) {
				// stmt.isClosed : 닫혀있으면true 
				stmt.close();
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// ResultSet 반환 메소드
		public static void close(ResultSet rs) {
			
			try {
				// 참조하는 ResultSet가 있으면서 닫혀있지 않은 경우
				if(rs != null && !rs.isClosed()) {
					// rs.isClosed : 닫혀있으면true 
					rs.close();
				}
					
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	
		// commit 반환 메소드
		public static void commit(Connection conn) {
			
			try {
				// 참조하는 Connection이 있으면서 닫혀있지 않은 경우
				if(conn != null && !conn.isClosed()) {
					// conn.isClosed : 닫혀있으면true 
					conn.commit();
				}
					
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// rollback 반환 메소드
		public static void rollback(Connection conn) {
			
			try {
				// 참조하는 Connection이 있으면서 닫혀있지 않은 경우
				if(conn != null && !conn.isClosed()) {
					// conn.isClosed : 닫혀있으면true 
					conn.rollback();
				}
					
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
