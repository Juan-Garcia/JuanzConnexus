<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

 <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Hello App Engine</title>
  </head>

  <body>
    <h1>Welcome to JuanzConnexus </h1>
	<h2> Share Your World!</h2>
    <table>
      <tr>
        <td colspan="2" style="font-weight:bold;">Available Servlets:</td>        
      </tr>
      <tr>
        <td><a href="juanzconnexus">Juanzconnexus</a></td>
      </tr>
      <tr>
        <td><a href="juanzconnexus">Juanzconnexus</a></td>
      </tr>
      <tr>
        <td><a href="juanzconnexus">Juanzconnexus</a></td>
      </tr>
      
      	<p class = "sansserif" > 
  		<a href="CreateStream.html">	Create 	|	</a>	
		<a href="ViewAllStreams.jsp">View 	|	</a>
		<a href="SearchStreams.jsp">Search 	|	</a>
		<a href="TrendingStreams.jsp">Trending	|	</a>		
		<a href="FBlogin.html">Social</a> </p>
      
    </table>

<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
      pageContext.setAttribute("user", user);
%>
<p>Hello, ${fn:escapeXml(user.nickname)}! (You can
<a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>.)</p>
<%
    } else {
%>
<p>Hello!
<a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
to include your name with greetings you post.</p>
<%
    }
%>
  </body>
</html>