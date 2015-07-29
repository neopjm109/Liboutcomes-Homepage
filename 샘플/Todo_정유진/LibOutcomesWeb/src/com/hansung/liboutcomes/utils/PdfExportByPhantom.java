package com.hansung.liboutcomes.utils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @brief	웹페이지를 pdf로 변환해주는 함수
 * @author JoonMin
 * @todo	현재 assets에 저장하면 다시 컴파일하지 않는 이상 새로 만들어진 pdf파일이 불러오질 않는다.
 * 			이걸 해결해야함
 */

public class PdfExportByPhantom {

	public static void Convert() {
		String[] command={"cmd","/k","cd D:/pdf&&phantomjs app.js"};
	    Process p;
	    
	    File dir = new File("D:/pdf/");
	    File[] fileList = dir.listFiles();
	    
	    try{
	    	for (int i = 0 ; i<fileList.length; i++) {
	    		System.out.println(fileList[i].getName());
	    	}
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
