<%@page import="java.util.Date"
%><%@page import="java.util.jar.Attributes"
%><%@page import="java.util.jar.Manifest"%><!DOCTYPE html><html><meta http-equiv="refresh" content="3">
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
    background-color: #FF4136;
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
<div class="element">
 Now is <%= new Date()%>...
 </div>
 </body>