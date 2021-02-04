Requesst flow

When user access the application via browser, the HTTP request is sent via internet connection using TCP/IP to the load balancer.
The load balancer forwards the request to one of the Webserver load balancer uses sticky, round-robin load balancing to determine the target webserver
The target webserver receives the request forwarded to it from the load balancer and sends the request to app server.As the client progresses through the application, application data is updated in the SQL.
If the node fails due to a system crash, the load balancer detects that the node has ceased responding to requests and begins to forward requests to another node in the cluster.
The new target node retrieves the failed over HTTP session information and continues responding to the client’s requests, allowing the client to complete the HTTP session with no loss of data.
Tier2_ Architecture_20200908 (Tier2 Architecture Diagram) jdk :(Install jdk using ansible script jdk.yml) EC2& ELB(Create EC2 & Elastic load balancer use aws_elb.tf file) Webserver: Apache server(Installation use for http.yml filr) App Server: Tomcat(Tomcat) DB : SQL(Instllation use ansible script use sqlserver-coi-master directory)
