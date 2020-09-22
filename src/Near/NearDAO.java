package Near;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class NearDAO {
	
	Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//로그인
	public void getConnection() {
		
		try {
			Context initctx = new InitialContext();
			Context envctx = (Context)initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
			
			conn = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	//회원 가입 저장
	
	public void insertMember(MemberBean mbean) {
			
		getConnection();
		
		
		try {
			
			String sql = "insert into nearmember values(nearmember_seq.nextval, ?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getUserid());
			pstmt.setString(2, mbean.getPassword());
			pstmt.setString(3, mbean.getUsername());
			pstmt.setString(4, mbean.getEmail());
			pstmt.setString(5, mbean.getContact());
			
			pstmt.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 화면
	
	public int getUserLogin(String userid, String password) {
	
		int result = 0;
		
		getConnection();
		
		try {
			
			String sql = "select count(*) from nearmember where userid=? and password=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				result = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;	
	}
	

	//회원 정보 불러오기

	public MemberBean getUserInfo(String userid) {
	
		MemberBean mbean = new MemberBean();
		getConnection();
		
		try {
			String sql = "select * from nearmember where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				mbean.setUserid(rs.getString(2));
				mbean.setPassword(rs.getString(3));
				mbean.setUsername(rs.getString(4));
				mbean.setEmail(rs.getString(5));
				mbean.setContact(rs.getString(6));			
				}
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}	
		return mbean;	
	}
	
	//회원 정보 수정

	public void updateMember(MemberBean bean) {
		
		getConnection();

		try {
			
			String sql = "update nearmember set nearname=?, email=?, contact=? where userid=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getUsername());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getContact());
			pstmt.setString(4, bean.getUserid());
		
			pstmt.executeUpdate();
			
			if(conn != null)
				conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//숙소 등록하기
	
	public void insertNearList(NearListBean nbean) {
		
		getConnection();
		
		try {
			
			String sql = "insert into nearlist values(nearlist_seq.nextval, ?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, nbean.getNearname());
			pstmt.setString(2, nbean.getNearstate());
			pstmt.setString(3, nbean.getNearaddress());
			pstmt.setInt(4, nbean.getUsepeople());
			pstmt.setInt(5, nbean.getPrice());
			pstmt.setString(6, nbean.getImg());
			pstmt.setString(7, nbean.getNearinfo());
			pstmt.setString(8, nbean.getHostinfo());
			
			pstmt.executeUpdate();
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	//전체 숙소 불러오기
	
	public Vector<NearListBean> getAllList(){
		
		Vector<NearListBean> vec = new Vector<NearListBean>();
		getConnection();
		
		try {
			String sql = "select * from nearlist";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				NearListBean nbean = new NearListBean();
				nbean.setNearno(rs.getInt(1));
				nbean.setNearname(rs.getString(2));
				nbean.setNearstate(rs.getString(3));
				nbean.setNearaddress(rs.getString(4));
				nbean.setUsepeople(rs.getInt(5));
				nbean.setPrice(rs.getInt(6));
				nbean.setImg(rs.getString(7));
				nbean.setNearinfo(rs.getString(8));
				nbean.setHostinfo(rs.getString(9));
				
				vec.add(nbean);
			}
			
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vec;
	}
	
	
	//숙소 정보 하나만 불러오기

	public NearListBean getOneNearList(int nearno){
		
		NearListBean nbean = new NearListBean();
		getConnection();
		
		try {
		
			String sql = "select * from nearlist where nearno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nearno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				nbean.setNearno(rs.getInt(1));
				nbean.setNearname(rs.getString(2));
				nbean.setNearstate(rs.getString(3));
				nbean.setNearaddress(rs.getString(4));
				nbean.setUsepeople(rs.getInt(5));
				nbean.setPrice(rs.getInt(6));
				nbean.setImg(rs.getString(7));
				nbean.setNearinfo(rs.getString(8));
				nbean.setHostinfo(rs.getString(9));
			}
			conn.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbean;
	}
	
	//예약 내용 저장
	
	public void insertReserve(ReserveBean rbean) {
		
		getConnection();
		
		try {
			
			String sql = "insert into nearreserve values(nearreserve_seq.nextval, ?,?,?, sysdate,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rbean.getUsername());
			pstmt.setString(2, rbean.getNearname());
			pstmt.setInt(3, rbean.getReserveterm());
			pstmt.setInt(4, rbean.getUsenum());
			pstmt.setString(5, rbean.getImg());
			pstmt.setInt(6, rbean.getNearno());
		
			pstmt.executeUpdate();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	
	//예약 전체 정보 불러오기
	
	public Vector<ReserveBean> getAllReserve(){
		Vector<ReserveBean> vec = new Vector<ReserveBean>();
		getConnection();
		
		
		try {
			String sql = "select * from nearreserve";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ReserveBean rbean = new ReserveBean();
				rbean.setReserveno(rs.getInt(1));
				rbean.setUsername(rs.getString(2));
				rbean.setNearname(rs.getString(3));
				rbean.setReserveterm(rs.getInt(4));
				rbean.setReserveday(rs.getString(5));
				rbean.setUsenum(rs.getInt(6));
				rbean.setImg(rs.getString(7));
				rbean.setNearno(rs.getInt(8));
				
				vec.add(rbean);
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vec;	
	}
	
	
	//닉네임으로 회원 예약 정보 불러오기 
	
	public Vector<UserViewBean> getUserReserve(String username){
		Vector<UserViewBean> vec = new Vector<UserViewBean>();
		
		getConnection();
		
		
		try {
			String sql = "select * from nearmember natural join nearreserve where username = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				UserViewBean ubean = new UserViewBean();
				ubean.setUserid(rs.getString(3));
				ubean.setReserveno(rs.getInt(7));
				ubean.setNearname(rs.getString(8));
				ubean.setReserveterm(rs.getInt(9));
				ubean.setReserveday(rs.getString(10));
				ubean.setUsenum(rs.getInt(11));
				
				vec.add(ubean);
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vec;	
	}
	

	
	//회원 예약 정보 불러오기
	
	public ReserveBean getOneReserve(int reserveno) {
		
		ReserveBean rbean = new ReserveBean();
		getConnection();
		
		try {
			String sql = "select * from nearreserve where reserveno=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reserveno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {		
				rbean.setReserveno(rs.getInt(1));
				rbean.setUsername(rs.getString(2));
				rbean.setNearname(rs.getString(3));
				rbean.setReserveterm(rs.getInt(4));
				rbean.setReserveday(rs.getString(5));
				rbean.setUsenum(rs.getInt(6));
				rbean.setImg(rs.getString(7));
				rbean.setNearno(rs.getInt(8));
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rbean;
	}
	
	//예약 내용 삭제하기
	public void deleteReserve(int reserveno) {
		getConnection();
		
		try {
			String sql = "delete from nearreserve where reserveno=?";
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setInt(1, reserveno);
			pstmt.executeUpdate();
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 1:1 문의 등록하기
	public void insertNearHelp(HelpBean hbean) {
		
		getConnection();
		
		try {
		String sql = "insert into nearhelp values(nearhelp_seq.nextval, ?,?,?,sysdate,?)";
		pstmt = conn.prepareStatement(sql);
	
		pstmt.setString(1, hbean.getUsername());
		pstmt.setString(2, hbean.getEmail());
		pstmt.setString(3, hbean.getHelptitle());
		pstmt.setString(4, hbean.getHelpcontent());
		
		pstmt.executeUpdate();
		
		conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 1:1 문의 전체 보기
	
	public Vector<HelpBean> getAllNearHelp(){
		
		Vector<HelpBean> vec = new Vector<HelpBean>();
		getConnection();
		
		try {
		String sql = "select * from nearhelp";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				HelpBean hbean = new HelpBean();
				
				hbean.setHelpno(rs.getInt(1));
				hbean.setUsername(rs.getString(2));
				hbean.setEmail(rs.getString(3));
				hbean.setHelptitle(rs.getString(4));
				hbean.setUploaddate(rs.getDate(5));
				hbean.setHelpcontent(rs.getString(6));
				
				vec.add(hbean);
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vec;
	}
	
}
