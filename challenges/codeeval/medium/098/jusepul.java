/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.nio.ByteOrder;

/**
 *
 * @author ju-sepul
 */
public class Hack {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            processLine(line);
        }
    }

    public static void processLine(String line) {
        String data[]=line.split(";");
        String data1[]=data[0].split(":");
        String center[]=data1[1].trim().substring(1, data1[1].length()-2).split(",");
        String radius=data[1].split(":")[1].trim();
        String data2[]=data[2].split(":");
        String point[]=data2[1].trim().substring(1, data2[1].length()-2).split(",");
        double centerx=Double.parseDouble(center[0]);
        double centery=Double.parseDouble(center[1]);
        double rad=Double.parseDouble(radius);
        double pointx=Double.parseDouble(point[0]);
        double pointy=Double.parseDouble(point[1]);
        double calc=Math.pow(pointx-centerx, 2)+Math.pow(pointy-centery, 2);
        System.out.println(calc<=Math.pow(rad, 2));
    }

}
 
