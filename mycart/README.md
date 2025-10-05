# MyCart - eCommerce Website

This is a simple eCommerce website built with Java Servlets and JSP.

## Prerequisites

*   Java Development Kit (JDK) 11 or higher
*   Apache Maven
*   A servlet container like Apache Tomcat

## How to Build

1.  Clone the repository.
2.  Open a terminal and navigate to the `mycart` directory.
3.  Run the following command to build the project:
    ```bash
    mvn clean install
    ```
4.  This will generate a `mycart-1.0-SNAPSHOT.war` file in the `target` directory.

## How to Run

1.  Deploy the `mycart-1.0-SNAPSHOT.war` file to your servlet container (e.g., Apache Tomcat).
2.  Access the application in your web browser at `http://localhost:<port>/mycart-1.0-SNAPSHOT/`. The port number will depend on your servlet container configuration (e.g., 8080 for Tomcat).