package vn.iotstar.model;

import java.util.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import vn.iotstar.database.DataBaseConnection;

public class BaiHocDao {

	DataBaseConnection dbC = new DataBaseConnection();

	public List<BaiHoc> GetScience(KhoaHoc khoahoc) throws SQLException, ClassNotFoundException {
		String sql = "sp_XemDanhSachBaiHoc " + khoahoc.getMakhoahoc() + "";
		ResultSet rs = dbC.ExecuteQuery(sql);

		BaiHoc baihoc = new BaiHoc();
		List<BaiHoc> listbaihoc = new ArrayList<BaiHoc>();
		while (rs.next() == true) {
			baihoc = new BaiHoc(rs.getInt("MaBaiHoc"), rs.getNString("TenBaiHoc"), rs.getDouble("ThoiGianHoanThanh"),
					rs.getString("NoiDungBaiHoc"), rs.getDouble("MucTieuDauRa"), rs.getDate("NgayDang"),
					rs.getInt("MaKhoaHoc"));
			listbaihoc.add(baihoc);
		}
		return listbaihoc;
	}

	public int ThemBaiHoc(BaiHoc baihoc) throws SQLException, ClassNotFoundException {
		String sqlStr = String.format("INSERT INTO BAIHOC VALUES(%d, '%s', %f, '%s', %f, GETDATE(), NULL, %d)",
				baihoc.getMabaihoc(), baihoc.getTenbaihoc(), baihoc.getThoigianhoanthanh(), baihoc.getNoidungbaihoc(),
				baihoc.getMuctieudaura(), baihoc.getNgaydang(), baihoc.getMakhoahoc());
		int check = dbC.ExecuteCommand(sqlStr);
		return check;
	}
}
