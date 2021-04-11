package com.abkj.core.po;

import java.sql.Date;
import java.sql.Timestamp;

public class Goods {
	private int gid;
	private String gname;
	private String price;
	private String inprice;
	private String pic;
	private int status;
	private String description;
	private int stock;
	private String identifier;
	private int recyle;
	private int cid;
	private int is_best;
	private Date inTime;
	private int hits;
	private Integer start; 
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
	public String getInprice() {
		return inprice;
	}
	public void setInprice(String inprice) {
		this.inprice = inprice;
	}
	public Date getInTime() {
		return inTime;
	}
	public void setInTime(Date intime) {
		this.inTime = intime;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getpic() {
		return pic;
	}
	public void setpic(String pic) {
		this.pic = pic;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getIdentifier() {
		return identifier;
	}
	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}
	public int getRecyle() {
		return recyle;
	}
	public void setRecyle(int recyle) {
		this.recyle = recyle;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getIs_best() {
		return is_best;
	}
	public void setIs_best(int is_best) {
		this.is_best = is_best;
	}
	public void setInTime(Timestamp intime2) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", price=" + price + ", inprice=" + inprice + ", status="
				+ status + ", description=" + description + ", stock=" + stock + ", identifier=" + identifier
				+ ", recyle=" + recyle + ", cid=" + cid + ", is_best=" + is_best + ", inTime=" + inTime + ", hits="
				+ hits + "]";
	}

}
