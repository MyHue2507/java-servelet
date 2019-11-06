package bean;

public class loaiBean {
	private String maLoai;
	private String tenLoai ;
	private String dsSach ;
	public loaiBean(String maLoai, String tenLoai, String dsSach) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.dsSach = dsSach;
	}
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public String getDsSach() {
		return dsSach;
	}
	public void setDsSach(String dsSach) {
		this.dsSach = dsSach;
	}
	
	
	
}
