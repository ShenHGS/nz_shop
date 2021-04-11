package com.abkj.core.po;

import java.sql.Date;

public class Orders {
  private  int oid;//订单id
  private int mid;//用户id
  private Date create_time;//时间
  private String consignee;//收货人
  private String address;//地址
  private String phone;//电话
  private int is_payed;//是否付款
  private int payid;
  private int amount;//数量
  private String remarks;//备注
  private Integer start;            // 起始行
  private Integer rows;
public int getOid() {
	return oid;
}
public void setOid(int oid) {
	this.oid = oid;
}
public int getMid() {
	return mid;
}
public void setMid(int mid) {
	this.mid = mid;
}
public Date getCreate_time() {
	return create_time;
}
public void setCreate_time(Date create_time) {
	this.create_time = create_time;
}
public String getConsignee() {
	return consignee;
}
public void setConsignee(String consignee) {
	this.consignee = consignee;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public int getIs_payed() {
	return is_payed;
}
public void setIs_payed(int is_payed) {
	this.is_payed = is_payed;
}
public int getPayid() {
	return payid;
}
public void setPayid(int payid) {
	this.payid = payid;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}
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
@Override
public String toString() {
	return "Orders [oid=" + oid + ", mid=" + mid + ", create_time=" + create_time + ", consignee=" + consignee
			+ ", address=" + address + ", phone=" + phone + ", is_payed=" + is_payed + ", payid=" + payid + ", amount="
			+ amount + ", remarks=" + remarks + ", start=" + start + ", rows=" + rows + "]";
}

}


  

