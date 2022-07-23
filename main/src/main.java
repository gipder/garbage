package main;

import java.io.*;

import com.garbage.bbb.*;

public class main {
    public static void main(String[] args){
        System.out.println("Hello World");
        System.out.println(System.getProperty("java.class.path"));
        ProjectB projectB = new ProjectB();
        projectB.init();
        projectB.readFiles(10);
        projectB.classify(100);
        System.out.println("Good bye World");
        return;
    }
}
