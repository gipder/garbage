package com.garbage.bbb;

import java.io.*;

import com.garbage.aaa.*;

public class ProjectB {
    public ProjectB () { 
        projectA = new ProjectA();
    }
    public int init() {
        System.out.println("In ProjectB, init()");
        System.out.println("init() result: " + Integer.toString(projectA.init()));
        return 0;
    }

    public int readFiles(int in){
        System.out.println("In ProjectB, readFiles(int in)");
        String result = Integer.toString(projectA.readFiles(10));
        System.out.println("readFiles(int in) result: " + result);
        return 0;
    }

    public int classify(int in){
        System.out.println("In ProjectB, classify(int in)");
        String result = Integer.toString(projectA.classify(in));
        System.out.println("classify(int in) result: " + result);
        return projectA.classify(in);
    }

    private ProjectA projectA;

    public static void main(String[] args){
        ProjectB projectB = new ProjectB();
        projectB.init();
        projectB.readFiles(111);
        projectB.classify(1020);

    }
}
