package com.user;

public class Inquiry {

		private String RID;
		private String descripton;
		private String IID;
		
		public Inquiry(String RID,String descripton,String IID) {
			this.descripton=descripton;
			this.IID=IID;
			this.RID=RID;
		}
		public String  getdescripton() {
			return descripton;
		}
		public String getRID() {
			return RID;
		}
		public String getIID() {
			return IID;
		}

}
