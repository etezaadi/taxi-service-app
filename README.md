# Taxi Service app
A simple Web application that demonstrates the principles of OOP and SOLID. Implements authentication using filters based on the user session, and also allows you to interact with data using various CRUD operations. The project was created for educational purposes, to demonstrate software design skills.

### Navigation
-[Description](#description) <br/>
-[Technologies](#technologies) <br/>
-[How to Run this Project](#how-to-run-this-project) <br/>

## Description
#### Architecture:
* DAO - Data access layer
* Service - Application logic layer
* Controller - Presentation layer <br/>

#### Application functionality
Login using driver's login and password:
>![login](https://user-images.githubusercontent.com/94146091/172699556-c21b1825-fe1a-455c-a0c9-b6755d424720.png) <br/>

Convenient and easy navigation on the main page:
>![main](https://user-images.githubusercontent.com/94146091/172705703-ef359561-5940-4027-b022-29398105fb07.png) <br/>

Display drivers, cars, manufacturers and your current cars:
>![display](https://user-images.githubusercontent.com/94146091/172720920-f517a13f-ddef-4769-85b8-f1c3315be047.png) <br/>

Create driver, car, manufacturer and add driver to car:
>![create](https://user-images.githubusercontent.com/94146091/172715404-3cf20803-7bc2-48b3-bb01-aa917b7c7bcb.png) <br/>

## Technologies
* Java 11
* Apache Maven
* Apache Tomcat - version 9
* Apache Log4j2 - version 2.17.2
* JDBC
* MySQL
* HTTP Servlet
* JSP, JSTL
* HTML, CSS, XML

## How to Run this Project
1. Clone the project on your IDE. <br/>
 `https://github.com/etezaadi/taxi-service-app.git` <br/>
2. Configure ConnectionUtil class to create connection to your DB: <br/>
  ```html
  public class ConnectionUtil {
    private static final String URL = "YOUR DATABASE URL";
    private static final String USERNAME = "YOUR USERNAME";
    private static final String PASSWORD = "YOUR PASSWORD";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
}
```
3. Run the script from `resources/init_db.sql` for configure `taxi` schema. <br/>
4. Open `src/main/resources/log4j2.xml` and add absolute path to your .log file. <br/>
5. Configure Tomcat:
  * Edit Configurations -> Add new Configuration -> Tomcat Local
  * In the tab Deployment -> Add -> Choose `taxi-service-app: war exploded`
  * Set Application context: `/` <br/>
6. Run project.

## Project Author
#### Daniel Etezadi | [LinkedIn](https://www.linkedin.com/in/daniel-etezadi)
