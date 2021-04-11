package com.abkj.core.po;

import java.sql.Date;
import java.sql.Timestamp;

public class Shopcart {
	private int scid;
	private int mid;
	private Date add_time;
	private int gid;
	private int num;
	private Integer start; 
	private String price;
	private String amount;
	private Integer rows;
	
	
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}


	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}

	
	public int getScid() {
		return scid;
	}
	public void setScid(int scid) {
		this.scid = scid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public Date getAdd_time() {
		return add_time;
	}
	public void setAdd_time(Date add_time) {
		this.add_time = add_time;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Shopcart [scid=" + scid + ", mid=" + mid + ", add_time=" + add_time + ", gid=" + gid + ", num=" + num
				+ ", start=" + start + ", price=" + price + ", amount=" + amount + ", rows=" + rows + "]";
	}
	
	
}
