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

<link href="list.css" rel="stylesheet" type="text/css">

<title>list</title>
	<%-- <script>
		function getObj(name){
			return document.getElementById(name);
		}
		
		function plus(){
			const obj = getObj("num");
			let val = Number(obj.textContent)+1;
			if(val>2){
				val=2;
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
			let iro ="red";
			if(num==1){
				iro="blue";
			}else if(num==2){
				iro="red";
			}
			obj.style.color = iro;
		}
		
	</script>--%>
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
<%
Optional<List<String[]>>optList3 = Optional.ofNullable((List<String[]>)request.getAttribute("list3"));
List<String[]> list3=new ArrayList<>();
if(optList3.isPresent()){
	list3 = optList3.get();
}
%>
<%
Optional<List<String[]>>optList4 = Optional.ofNullable((List<String[]>)request.getAttribute("list4"));
List<String[]> list4=new ArrayList<>();
if(optList4.isPresent()){
	list4 = optList4.get();
}
%>

<body>

<%-- <p>
<button type="button" onclick="plus();">+</button>
<button type="button" onclick="minus();">-</button>
</p>--%>
<form method="post" action="add">
<table class="table">
  <thead> 
    <th>
    <div class="title">結果</div>
    </th>
  </thead>
  <tbody>
     <th>
    <div class="title">食品</div>
    <br>
    <div class="title">名前</div>
    </th>
    
   
  <% for (String[] s : list1){ %>
    <tr>
    <% String commid = s[0]; %>
    
    <td><div class="list"><%=s[1] %></div></td>
	<td><button type="submit"style="width: 200px; height: 80px;"value=<%=commid%> name="comm" ><div class="font">購入する</div></button></td>
	<td><div class="font"><%=s[3] %></div></td>


    </tr>
    <%} %>
 
  <% for (String[] s : list2){ %>
    <tr>
    
    <td><div class="kaimono"><%=s[1] %></div></td>
	<td><div class="font2">登録済み</div></td>
	<td><div class="font"><%=s[3] %></div></td>


    </tr>
    <%} %>

    <th>
    
    <div class="title">日用品</div>
   
    <br>
    <div class="title">名前</div>
    </th>
  <% for (String[] s : list3){ %>
    <tr>
    <% String commid = s[0]; %>
    
    <td><div class="list"><%=s[1] %></div></td>
	<td><button type="submit"style="width: 200px; height: 80px;"value=<%=commid%> name="comm" ><div class="font">購入する</div></button></td>
	<td><div class="font"><%=s[3] %></div></td>


    </tr>
    <%} %>
 
  <% for (String[] s : list4){ %>
    <tr>
    
    <td><div class="kaimono"><%=s[1] %></div></td>
	<td><div class="font2">登録済み</div></td>
	<td><div class="font"><%=s[3] %></div></td>


    </tr>
    <%} %>
    
  </tbody>
</table>
</form>
<a href="http://localhost:8080/R03Team06/kaimono">買い物画面</a>
<a href="http://localhost:8080/R03Team06/tuika.jsp">商品追加画面</a>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</html>