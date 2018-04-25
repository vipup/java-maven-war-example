<%@page import="java.util.Date"%><!DOCTYPE html><html><meta http-equiv="refresh" content="3">
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
<h1>Hello!</h1> 
<div class="element">
 Now is <%= new Date()%>...
 </div>
 </body>