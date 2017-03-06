package com.utility.web.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonOutPut {
	
	public JsonOutPut() {}
	
    public void writeToResponse(JSONObject json){
    	PrintWriter writer;
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try {
            writer = response.getWriter();//將內容輸出到response
            writer.write(json.toString());
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
	
    public void writeToResponse(JSONArray json){
    	PrintWriter writer;
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try {
            writer = response.getWriter();//將內容輸出到response
            writer.write(json.toString());
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
