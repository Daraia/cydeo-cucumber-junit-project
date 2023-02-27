package com.cydeo.utilities;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.time.Duration;

public class Driver {

    /*
    Creating a private constructor, so we are closing access to the object of this class from outside of any classes
     */
    private Driver(){
    /*
    making our 'driver' instance private so that it is not reachable from outside of any class
    We make it static, because we want it to run before anything else,
    also we will use it in static method
     */
    }
    private static WebDriver driver;
    /*
    creates re-usable utility method which will return some driver instance when we call it
     */
    public  static WebDriver getDriver(){
        if(driver == null){// if driver/browser was never opened
            /*
            we will read our browserType from configuration.properties file.
            this way, we can control which browser is opened from outside our code.
             */
            String browserType = ConfigurationReader.getProperty("browser");
            /*
            Depending on the browserType returned from the configuration.properties switch statement will determine
            the "case", and open the matching browser.
             */

            switch (browserType){
                case "chrome":
                    //WebDriverManager.chromedriver().setup();
                    driver = new ChromeDriver();
                    driver.manage().window().maximize();
                    driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));

                    break;

                case "firefox":
                    //WebDriverManager.firefoxdriver().setup();
                    driver = new FirefoxDriver();
                    driver.manage().window().maximize();
                    driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));

            }

        }
        //some driver instance will be return everytime we call Driver.getDriver() Methods
        return driver;
    }
    public static void closeDriver(){
        if (driver!=null){
            driver.quit();// this line will kill the session. value will not be null
            driver = null;
        }
    }
}
