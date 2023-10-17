<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tech.blog.dao.PostDao"%>

<div class="row">

<%

Thread.sleep(800);
PostDao d=new PostDao(ConnectionProvider.getConnection());
int cid=Integer.parseInt(request.getParameter("cid"));
List<Post> posts=null;
if(cid==0){
	 posts=d.getAllPosts();
}else{
	posts=d.getPostByCatId(cid);
}

if(posts.size()==0){
	out.println("<h3 class='display-3 text-center'>No Posts in this category...</h3>");
	return;
}

for(Post p:posts){
	%>
	
	<div class="col-md-6 mt-2">
	
	<div class="card">
	  <img class="card-img-top" src="blog_pics/<%=p.getpPic() %>" alt="Card image cap">
	<div class="card-body">
	
	<b> <%=p.getpTitle() %></b>
	<p><%=p.getpContent() %></p>
	
	
	</div>
	<div class="card-footer  text-center">
	

	
	
	<a href="show_blog_page.jsp?post_id=<%=p.getPid() %>" class="btn btn-outline-primary btn-sm">Read More...</a>
	</div>
	
	</div>
	
	</div>
	
	
	<%
	
	
}


%>
</div>


