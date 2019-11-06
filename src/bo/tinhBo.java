package bo;

public class tinhBo {
	public Long tinh(String button, String txta, String txtb) {
		if(button!="" && txta!="" && txtb!="") {
			long a = Long.parseLong(txta);
			long b = Long.parseLong(txtb);
			long kq = 0 ;
			if(button != null && !(button.equals("/") && b==0)){
				kq = (button.equals("+")) ? a+b : (button.equals("-")) ? a-b : (button.equals("*")) ? a*b :a/b ;
				return kq ;
			}
			else
				return null ;
		}else
			return null ;
		
	
	}
}
