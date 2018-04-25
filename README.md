# sparkjava-war-example
Build war with maven and sparkjava framework

Steps:

1. Download a fresh [Tomcat 8 distribution](https://tomcat.apache.org/download-80.cgi)
2. Clone the repository to your local machine
3. Start Tomcat ( default at localhost,  port 8080 )
4. Run mvn -X help:active-profiles tomcat:redeploy
5. Tomcat will automatically deploy the war
6. Open [http://localhost:8080/thisIsHelloWar/hello](http://localhost:8080/thisIsHelloWar/hello) in your browser
