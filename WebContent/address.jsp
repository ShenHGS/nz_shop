<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/address.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="box-body">
    <FORM method="post" name="form1" action="">
    <div class ="radioaddr">
    	<input class="radio_type" type="radio" name="addr" value="1" onclick="addrSelect()">使用注册时的信息 
		<input class="radio_type" type="radio" name="addr" checked="checked" value="2" onclick="noAddrSelect()">新建地址
		</div>
    <FONT size=3>请输入联系人姓名：</FONT>
      <INPUT type=text name="inboxname" size=30 id=name><p>
      <FONT size=3>请输入联系人电话：</FONT>
      <INPUT type=text name="inboxtel" size=30 id=tel><p>
	<FONT size=3>请输入联系人地址：</FONT>
	<INPUT type=text name=inboxaddr size=30 id=addr><p>
      <div class="buttons">
		<div class="btn-up">
			<a href="" class=btn-1 onclick="bcancel()">取消</a>
		</div>
		<div class="btn-res">
			<a href="" class="btn-1" onclick="bconfirm()">确认</a>
		</div>
	</div>
    </FORM>
    </div>
</body>
</html>
 <SCRIPT>
 /* function bconfirm(){
     dialogArguments.addNameform.inboxname.value=document.form1.inboxname.value;
      dialogArguments.opensub();
      window.close();
   }
   function bcancel(){
      window.close();
   } */
   function bconfirm(){
	   opener.document.all['inboxname'].value=document.form1.inboxname.value;
	   opener.document.all['inboxtel'].value=document.form1.inboxtel.value;
	   opener.document.all['inboxaddr'].value=document.form1.inboxaddr.value;
	   opener.document.all['addr'].value=document.form1.addr.value;
	   opener.opensub();
   	window.close();
	}
   function addrSelect(){
		document.getElementById("name").disabled=true;
		document.getElementById("tel").disabled=true;
		document.getElementById("addr").disabled=true;
	}
	
	function noAddrSelect(){
		document.getElementById("name").disabled=false;
		document.getElementById("tel").disabled=false;
		document.getElementById("addr").disabled=false;
}

	function bcancel(){
		window.close();
	}
    </SCRIPT>
