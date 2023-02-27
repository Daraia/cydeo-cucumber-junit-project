package com.cydeo.utilities;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ConfigurationReader {

    //1. create the properties object
    private static Properties properties = new Properties();

    static {



        try {

            //2. open file using FileInputStream
            FileInputStream file = new FileInputStream("configuration.properties");

            //3. Load the "properties" objects with "file" (load properties)
            properties.load(file);
        } catch (IOException e) {
            System.out.println("FILE NOT FOUND WITH GIVEN PATH!!");
            e.printStackTrace();
        }
    }

    //creat a utility method to use the object to read
    //4. Use "properties" object to read from the file(read properties)
    public static String getProperty(String keyword){
        return properties.getProperty(keyword);
    }
}
