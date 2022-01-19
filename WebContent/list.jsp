<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<title>list</title>
	<script>
		function getObj(name){
			return document.getElementById(name);
		}
		
		function plus(){
			const obj = getObj("num");
			let val = Number(obj.textContent)+1;
			if(val>3){
				val=3;
			}
			obj.textContent=val;
			setColor(obj);
		}
		function minus(){
			const obj = getObj("num");
			let val = Number(obj.textContent)-1;
			if(val<1){
				val=1;
			}
			obj.textContent=val;
			setColor(obj);
		}
		function setColor(obj){
			const num = Number(obj.textContent);
			let iro ="black";
			if(num==1){
				iro="red";
			}else if(num==2){
				iro="blue";
			}else if(num==3){
				iro="green";
			}
			obj.style.color = iro;
		}
		
	</script>
</head>
<%
Optional<List<String[]>>optList1 = Optional.ofNullable((List<String[]>)request.getAttribute("list1"));
List<String[]> list1=new ArrayList<>();
if(optList1.isPresent()){
	list1 = optList1.get();
}
%>
<%
Optional<List<String[]>>optList2 = Optional.ofNullable((List<String[]>)request.getAttribute("list2"));
List<String[]> list2=new ArrayList<>();
if(optList2.isPresent()){
	list2 = optList2.get();
}
%>

<body>

<p>
<span id="num">1</span>
<button type="button" onclick="plus();">+</button>
<button type="button" onclick="minus();">-</button>
</p>
<form method="post" action="add">
<table class="table">
  <thead> 
    <th>
    結果
    </th>
  </thead>
  <tbody>
     <th>
    食品
    <br>
    名前
    </th>
    
   
  <% for (String[] s : list1){ %>
    <tr>
    <% String commid = s[0]; %>
    <span id="num"></span>
    <td><%=s[1] %></td>
	<td><%=s[2] %><button type="submit"style="width: 80px; height: 30px;"value=<%=commid%> name="comm" >購入する</button></td>
	<td><%=s[3] %></td>


    </tr>
    <%} %>
 
 

    <th>
    日用品
    </th>
      <% for (String[] s : list2){ %>
    <tr>
    <% String commid = s[0]; %>
    <span id="num"></span>
    <td><%=s[1] %></td>
	<td><%=s[2] %><button type="submit"style="width: 80px; height: 30px;"value=<%=commid%> name="comm" onclick="minus();">購入する</button></td>
	<td><%=s[3] %></td>

    </tr>
    <%} %>
    
    
  </tbody>
</table>
</form>
<a href="http://localhost:8080/R03Team06/kaimono">買い物画面</a>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</html>