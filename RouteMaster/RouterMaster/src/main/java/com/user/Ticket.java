package com.user;

public class Ticket{
	private int Ticket_ID;
	private String place;
	private String visit;
	private String date;
	private String SeatNO;
	private String Payment;
	private int RID;
	
	public Ticket(int RID,String Place,String visit,String date,String SeatNO,String Payment,int Ticket_ID) {
		this.Payment=Payment;
		this.date=date;
		this.visit=visit;
		this.SeatNO=SeatNO;
		this.Ticket_ID=Ticket_ID;
		this.place=place;
		this.RID=RID;
	}
    public int getTicket_ID() {
		return Ticket_ID;
	}
	
	public String getPlace() {
		return place;
	}
	
	public String getVisit() {
		return visit;
	}

	public String getDate() {
		return date;
	}
	
	public String getSeatNO() {
		return SeatNO;
	}

	public String getPayment() {
		return Payment;
	}
	public int getRID() {
        return RID;
    }
   


}
