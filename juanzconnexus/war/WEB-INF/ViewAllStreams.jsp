<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="juanzconnexus.Stream" %>  
<%@ page import="juanzconnexus.OfyService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>

<%@ page import="juanzconnexus.OfyService" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
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
      	<p class = "sansserif" > 
  		<a href="CreateStream.html">	Create 	|	</a>	
		<a href="ViewAllStreams.jsp">View 	|	</a>
		<a href="SearchStreams.jsp">Search 	|	</a>
		<a href="TrendingStreams.jsp">Trending	|	</a>		
		<a href="FBlogin.html">Social</a> </p>
      
    </table>
  
    <table>
    
    
<%
		List<Stream> th = OfyService.ofy().load().type(Stream.class).list();
		Collections.sort(th);
		for (Stream s : th ) {
		  // APT: calls to System.out.println go to the console, calls to out.println go to the html returned to browser
		  // the line below is useful when debugging (jsp or servlet)
		  System.out.println("s = " + s);
		  %>
		  <tr><td> <img width="100" height="100" src="<%= s.coverImageUrl %>"> </td> 
		  <td><a href="ShowStream.jsp?streamId=<%= s.id %>&streamName=<%= s.name %>"> <%= s.name %></a></td><tr>

<% } %>
		

    </table>
  </body>
</html>