package com.automation.runner;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;


public class TestRunner {

//    @Test
//    public void runSuite(){
//        Karate.run("classpath:features").parallel(1);
//    }

//    @Test
//    public void testAnother(){
//        Karate.run("classpath:features").parallel(2);
//    }

    @Karate.Test
    Karate testRunner(){
        return Karate.run("classpath:features").outputCucumberJson(true)
                .reportDir("Cucumber-karate");
    }


    @Test
    void testAnother(){
        Karate.run("classpath:features");
    }
}
