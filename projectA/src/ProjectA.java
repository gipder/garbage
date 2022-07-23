package com.garbage.aaa;
import java.io.*;

public class ProjectA {
    public ProjectA () {  }
    public int init() {
        System.out.println("In ProjectA, init()");
        return 0;
    }

    public int readFiles(int in){
        System.out.println("In ProjectA, readFiles(int in)");
        return 0;
    }

    public int classify(int in){
        System.out.println("In ProjectA, classify(int in)");
        int ret = (in > 10)? 0: 1;
        return ret;
    }
}
