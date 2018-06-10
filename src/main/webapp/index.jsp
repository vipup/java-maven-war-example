<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@page import="java.util.Date"
%><%@page import="java.util.jar.Attributes"
%><%@page import="java.util.jar.Manifest"%><!DOCTYPE html><html><meta http-equiv="refresh" content="3" >
<style type="text/css">
h1 {
        color: DeepSkyBlue;
}
.element {
  width: 100%;
  height: 100%;
  animation: pulse 5s infinite;
}

@keyframes pulse {
  0% {
    background-color: #001F3F;
  }
  100% {
    background-color: #004136;
  }
}

html,
body {
  height: 100%;
}
</style> 
<body>
<% 
	Manifest mf = new Manifest();
	mf.read (  getServletContext().getResourceAsStream("/META-INF/MANIFEST.MF") );
	Attributes atts = mf.getMainAttributes();
%>
<h1>Hello!</h1> 
here is  <b> Implementation-Build:: <%=atts.getValue("Implementation-Build")%>	</b>
<h2>..and some other info</h2>
<pre>
System -------
Date : <%=new java.util.Date()%>

<% request.setAttribute("systemProperties", java.lang.System.getProperties()); %>
 <table>
  <tr>
   <th>Key</th>
   <th>Value</th>
  </tr>
  <c:forEach var="entry" items="${systemProperties}">
   <tr>
    <td>
     <c:out value="${entry.key}" />
    </td>
    <td>
     <c:out value="${entry.value}" />
    </td>
   </tr>
  </c:forEach>
 </table>

Manifest ............
Manifest-Version: <%=atts.getValue("Implementation-Build")%> 
Archiver-Version: <%=atts.getValue("Archiver-Version")%>
Created-By: <%=atts.getValue("Created-By")%>
Built-By: <%=atts.getValue("Built-By")%>
Build-Jdk: <%=atts.getValue("Build-Jdk")%>
Implementation-Title: <%=atts.getValue("Implementation-Title")%>
Implementation-Version: <%=atts.getValue("Implementation-Version")%>
Implementation-Vendor-Id: <%=atts.getValue("Implementation-Vendor-Id")%>
Implementation-Build: <%=atts.getValue("Implementation-Build")%>
Build-timestamp: <%=atts.getValue("Build-timestamp")%>

 </pre>
<div class="element">
 Now is <%= new Date()%>...
 </div>
 </body>