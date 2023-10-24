package vn.iotstar.model;

import vn.iotstar.database.DataBaseConnection;

public class HocVienDao {
	DataBaseConnection dbC = new DataBaseConnection();

	public int InsertHocVien() {
		String sql = "declare @manguoidung int\r\n"
				+ "set @manguoidung=(SELECT  Top 1 MaNguoiDung FROM NGUOIDUNG\r\n"
				+ "ORDER BY MaNguoiDung desc)\r\n"
				+ "\r\n"
				+ "insert into HOCVIEN(MaHocVien,LoaiTaiKhoan)\r\n"
				+ "values(@manguoidung,N'Dong')";
		int ketqua = dbC.ExecuteCommand(sql);
		System.out.print(sql);
		return ketqua;
	}
}
