package bo;

import java.util.ArrayList;

import bean.loaiBean;
import dao.loaiDao;

public class loaiBo {
	loaiDao loai = new loaiDao();
	public ArrayList<loaiBean> getLoai() {
		return loai.getLoai();
	}
}
