init demo project using
https://start.spring.io/

dependencies 
spring web rest API
spring boot actuator
check Maven 
 Generate Now 

Step 2 

vi src/main/java/com/example/demo/test.java 

package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")

public class test {
    @GetMapping("/myapp")
    public String getData() {
        return "<h1>Hello from SpringBoot Application</h1>";
    }

}

step 3

vi src/main/java/com/example/demo/DemoApplication.java 

package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}

step 4 
add file name in POM.xml     <configuration>
                <mainClass>com.example.demo.DemoApplication</mainClass> <!-- Specify the correct main class -->
            </configuration>
      </plugin>
    </plugins>
         <finalName>myapp</finalName>

  </build>

