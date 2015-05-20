package com.joonmin.htmltopdf;

import java.io.IOException;
import java.io.PrintWriter;

public class Convert {
	
	/**
	 * @brief PhantomJS exe File Execute
	 * @param args
	 */

	public static void main(String[] args) {
		String[] command={"cmd","/k","cd D:/Jar/phantomjs-2.0.0-windows/phantomjs-2.0.0-windows/bin&&phantomjs app.js"};
	    Process p;
	    try{
	        p=Runtime.getRuntime().exec(command);
	        PrintWriter stdin=new PrintWriter(p.getOutputStream());
	        stdin.close();
	        int returnCode;
	        returnCode=p.waitFor();
	        System.out.println("Return code = "+returnCode);

	    }catch(IOException e1){
	        e1.printStackTrace();

	    }catch(InterruptedException e){
	        e.printStackTrace();
	    }
	}
}