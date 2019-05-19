package com.sm.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sm.util.DBConnector;

public class MemberDAO {
	
	public MemberDTO selectOne(String id) throws Exception {
		
		Connection con = DBConnector.getConnect();
		
		String sql="select * from member where id=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, id);
		
		ResultSet rs = st.executeQuery();
		
		MemberDTO memberDTO = null;
		
		if(rs.next()) {
			
			memberDTO = new MemberDTO();
			
			memberDTO.setId(rs.getString("id"));
			memberDTO.setNickname(rs.getString("nickname"));
			memberDTO.setEmail(rs.getString("email"));
			memberDTO.setBirth(rs.getString("birth"));
			memberDTO.setSolarCal(rs.getString("solarCal"));
			memberDTO.setGender(rs.getString("gender"));
			
		}
		
		DBConnector.disConnect(con, st, rs);
		
		return memberDTO;
		
	}
	
	/* 회원정보수정 */
	
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		
		Connection con = DBConnector.getConnect();
		
		String sql = "update member set pw=?, nickname=?, email=? where id=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, memberDTO.getPw());
		st.setString(2, memberDTO.getNickname());
		st.setString(3, memberDTO.getEmail());
		st.setString(4, memberDTO.getId());
		
		int result = st.executeUpdate();
		
		DBConnector.disConnect(con, st);
		
		return result;
		
	}

	
	/* 로그인 */
	
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		
		Connection con = DBConnector.getConnect();
		
		String sql = "select * from member where id=? and pw=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		
		ResultSet rs = st.executeQuery();
		
		MemberDTO m = null;
		
		if(rs.next()) {
			
			m = new MemberDTO();
			
			m.setId(rs.getString("id"));
			m.setPw(rs.getString("pw"));
			m.setNickname(rs.getString("nickname"));
			m.setEmail(rs.getString("email"));
			m.setBirth(rs.getString("birth"));
			m.setSolarCal(rs.getString("solarCal"));
			m.setGender(rs.getString("gender"));
			
		}
		
		DBConnector.disConnect(con, st, rs);
		
		return m;
		
	}	
	
	

	/* 회원탈퇴 */
	
	public int memberDelete(String id) throws Exception {
		
		Connection con = DBConnector.getConnect();
		
		String sql = "delete member where id=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, id);
		
		int result = st.executeUpdate();
		
		DBConnector.disConnect(con, st);
		
		return result;
		
	}
	

	public int memberJoin(MemberDTO memberDTO) throws Exception {

		Connection con = DBConnector.getConnect();

		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		st.setString(3, memberDTO.getNickname());
		st.setString(4, memberDTO.getEmail());
		st.setString(5, memberDTO.getBirth());
		st.setString(6, memberDTO.getSolarCal());
		st.setString(7, memberDTO.getGender());

		int result = st.executeUpdate();

		DBConnector.disConnect(con, st);

		return result;

	}

}
