package dao;

import java.util.ArrayList;

import bean.loaiBean;


public class loaiDao {
	public ArrayList<loaiBean> getLoai() {
		ArrayList<loaiBean> ds = new ArrayList<loaiBean>();
		ds.add(new loaiBean("s1","Truyện tranh","Conan:Doremon:Trạng Quỳnh:Truyện Kiều:Thần Đồng Đát Việt"));
		ds.add(new loaiBean("s2","Tiểu thuyết","Con dâu nhà giàu:Hào môn kinh mộng:Thú Phi:Lạc Vương Phi:Thứ nữa hữu độc:Tài năng tuyệt sức"));
		ds.add(new loaiBean("s3","Sách tham khảo","Lập trình hướng đối tượng:Cơ sở dữ liệu:Java"));
		ds.add(new loaiBean("s4","Sách giáo khoa","Toán:Lý:Hóa:Sinh"));
		ds.add(new loaiBean("s5","Sách bài tập","Bài tập Tiếng Việt:Bài tập Toán:Bài tập nâng cao:Bài tập nâng cao"));
		return ds ;
	}
}
