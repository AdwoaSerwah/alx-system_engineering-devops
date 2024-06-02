This file contains the explanations for the tasks.


Tasks



0. Simple web stack

i. A server is a physical or virtual machine often located in a data center and runs an operating system.

ii. The role of the domain name is to translate domain names or records to their IP addresses.

iii. The www in www.foobar.com is an A (Address) record since it maps the domain name to an IP address.

iv. The web server serves static content (web pages) such as HTML and CSS files.

v. The application server runs the web application's code and generates dynamic content.

vi. The database stores application-related data.

vii. The server is using network to communicate with the user's computer.

viii. SPOF: Since this is a single-server setup, it is a SPOF. If the server fails, the entire website will become unavailable due to the lack of redundancy.

ix. Since maintenance like deploying new code often requires restarting the server, the website may be inaccessible during this period leading to downtime.

x. Since only one server is handling all traffic (and cannot be scaled), as the traffic becomes too much, the server may become overwhelmed, resulting in slow response times or crashes.



1. Distributed web infrastructure

i. The role of the load balancer is to distribute incoming requests/traffic between the servers

ii. The load balancer is using Round Robin distribution algorithm. It works by passing each new connection request to the next server in line, thereby distributing connections evenly across the servers.

iii. The load balancer enables an active-active setup. In active-active setups, the web servers are all active and serve requests simultaneously while in active-passive setup, only one server is active and handling traffic and the other server is on standby and takes over only if the active server fails.

iv. A database Primary-Replica works by letting the primary database handle all write operations. It then replicates data to the replica which can handle read operations. This provides redundancy and keeps data synchronized.

v. The primary node can handle read/write operations and data modifications whiles the replica node can handle only read operations to offload the primary node and provide redundancy.

vi. SPOF: Since the load balancer is just one, it is a SPOF. Its failure can lead to the website becoming inaccessible. The primary database can also be a SPOF since it is the only one that can handle write operations.

vii. Security issues. There is no firewall making it vulnerable to unauthorized access and attacks. There is also no HTTPS meaning data transmission between the user's browser and the server is not encrypted, making it susceptible to interception and attacks.

viii. No monitoring: Since there is no monitoring, it will be difficult to detect and respond to issues such as server overload, downtime, or security breaches.



2. Secured and monitored web infrastructure

i. Firewalls protect the network by filtering incoming and outgoing network traffic based on predetermined security rules.

ii. HTTPS encrypts traffic between the user's browser and the load balancer to ensure secure transmission hence preventing interceptions and man-in-the-middle attacks.

iii. Monitoring helps to detect and respond to issues such as server overload, downtime, or security breaches.

iv. Monitoring clients collect and send data about the performance and health of servers to a centralized monitoring service.

v. To monitor web server QPS, configure the monitoring client on the web servers to collect and report metrics/data specifically related to QPS. It should also trigger an alert if QPS is failing.

vi. Terminating SSL at the load balancer is an issue because the traffic between the load balancer and the web servers is not encrypted. This can expose data to interception within the internal network.

vii. Having only one MySQL server capable of accepting writes is an issue because if the primary MySQL server fails, no write operations can be performed.

viii. Having servers with all the same components might be a problem because of difficulty in scalability and limited flexibility. If each server has all components, adding a server means duplicating all roles, which might not be necessary. For instance, you might need more web servers to handle increased HTTP requests but not more database servers leading to inefficient use of resources. Also if there is maintenance task on one component (upgrading database), it may affect the services and if one component fails (the database), it might bring down the entire server, affecting the web and application services running on the same machine.

ix SPOF: The load balancer is an SPOF and the primary database can also be an SPOF.



3. Scale up

i. The load balancer cluster ensures that if one load balancer fails, the other can continue handling traffic, thus improving the availability and reliability of the infrastructure.

ii. Splitting the components ensures that each component can be scaled independently and also maintenance or fault of one component (database) does not affect the other components (web and application servers since they have their own servers.

