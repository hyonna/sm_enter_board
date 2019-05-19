package com.sm.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sm.util.DBConnector;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class NoticeDAO {

	public static void main(String[] args) {

		NoticeDAO noticeDAO = new NoticeDAO();
		java.util.Random random = new java.util.Random();

		for (int i = 0; i < 100; i++) {

			NoticeDTO noticeDTO = new NoticeDTO();
			noticeDTO.setTitle("MUSIC NATION SMTOWN PASSPORT 공지 – SUPER JUNIOR-D&E CONCERT [THE D&E]"+i);
			noticeDTO.setContents("안녕하세요.SM ENTERTAINMENT입니다.2019년 4월 13일(토) ~ 14일(일) 올림픽공원 올림픽 홀에서SUPER JUNIOR-D&E CONCERT [THE D&E]이 진행됩니다.팬 여러분의 성원에 감사드리며, MUSIC NATION SMTOWN PASSPORT의 진행 시간 및 공지사항에 대해 안내드리오니 하기 내용 참고 부탁 드립니다.감사합니다[MUSIC NATION SMTOWN PASSPORT 운영시간]▶ 2019년 4월 13일 (토) 14:00 ~ 17:00 ▶ 2019년 4월 14일 (일) 12:00 ~ ");
			noticeDTO.setWriter("SMTOWN");
			noticeDTO.setImage_src("notice_list_3.jpg");

			try {
				noticeDAO.noticeWrite(noticeDTO);
				Thread.sleep(300);
			} catch (java.lang.Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	
	//글 수정
	public int update(NoticeDTO noticeDTO) throws Exception {
		
		Connection con = DBConnector.getConnect();
		
		String sql = "update notice set title=?, contents=?, image_src=? where num=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, noticeDTO.getTitle());
		st.setString(2, noticeDTO.getContents());
		st.setString(3, noticeDTO.getImage_src());
		st.setInt(4, noticeDTO.getNum());
		
		
		int result = st.executeUpdate();
		
		DBConnector.disConnect(con, st);
		
		return result;
		
	}
	
	
	
	//총 글의 갯수
	
	 public int getTotalCount(String kind, String search) throws Exception {
		 
		 
		 Connection con = DBConnector.getConnect();
		 
		 String sql = "select count(num) from notice where "+ kind +" like ?";
		 
		 PreparedStatement st = con.prepareStatement(sql);
		 
		 st.setString(1, "%"+search+"%");
		 
		 ResultSet rs = st.executeQuery();
		 
		 rs.next();
		 
		 int result = rs.getInt(1);
		 
		 DBConnector.disConnect(con, st, rs);
		 
		 return result;
		 
	 }
	 
	 public NoticeDTO selectOne(int num) throws Exception {
		 
		 Connection con = DBConnector.getConnect();
		 
		 String sql = "select * from notice where num=?";
		 
		 PreparedStatement st = con.prepareStatement(sql);
		 
		 st.setInt(1, num);
		 
		 ResultSet rs = st.executeQuery();
		 
		 NoticeDTO noticeDTO = null;
		 
		 if(rs.next()) {
			 
			 
			 noticeDTO = new NoticeDTO();
			 
			 noticeDTO.setNum(rs.getInt("num"));
			 noticeDTO.setTitle(rs.getString("title"));
			 noticeDTO.setContents(rs.getString("contents"));
			 noticeDTO.setWriter(rs.getString("writer"));
			 noticeDTO.setReg_date(rs.getDate("reg_date"));
			 noticeDTO.setImage_src(rs.getString("image_src"));
			 
		 }
		 
		 DBConnector.disConnect(con, st, rs);
		 
		 return noticeDTO;
		 
		 
	 }
	 
	 
	 //삭제
	 
	 public int delete(int num) throws Exception {
		 
		 Connection con = DBConnector.getConnect();
		 
		 String sql = "delete notice where num=?";
		 
		 PreparedStatement st = con.prepareStatement(sql);
		 
		 st.setInt(1, num);
		 
		 int result = st.executeUpdate();
		 
		 DBConnector.disConnect(con);
		 
		 return result;
		 
	 }
	
	  
	 
	 //조회
	 
	 
	  public ArrayList<NoticeDTO> noticeList(String kind, String search, int startRow, int lastRow) throws Exception {
	  
	  Connection con = DBConnector.getConnect();
	  
	  String sql = "select * from " + 
				"(select rownum R, P.* from " + 
				"(select * from notice where "+ kind +" like ? order by num desc) P) " + 
				"where r between ? and ?";
	  
	  PreparedStatement st = con.prepareStatement(sql);
	  
	  	st.setString(1, "%"+search+"%");
		st.setInt(2, startRow);
		st.setInt(3, lastRow);
		
		ResultSet rs = st.executeQuery();
		
		ArrayList<NoticeDTO> ar = new ArrayList<NoticeDTO>();
		
		while(rs.next()) {
			
			NoticeDTO noticeDTO = new NoticeDTO();
			
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setContents(rs.getString("contents"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setReg_date(rs.getDate("reg_date"));
			noticeDTO.setImage_src(rs.getString("image_src"));
			
			ar.add(noticeDTO);
		}
	  
		DBConnector.disConnect(con, st, rs);
		
		return ar;
		
	  }
	 
	  
	  //작성

	public int noticeWrite(NoticeDTO noticeDTO) throws Exception {

		Connection con = DBConnector.getConnect();

		String sql = "insert into notice values(notice_seq.nextval, ?, ?, ?, sysdate, ?)";

		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, noticeDTO.getTitle());
		st.setString(2, noticeDTO.getContents());
		st.setString(3, noticeDTO.getWriter());
		st.setString(4, noticeDTO.getImage_src());

		int result = st.executeUpdate();

		DBConnector.disConnect(con, st);

		return result;
	}

}
