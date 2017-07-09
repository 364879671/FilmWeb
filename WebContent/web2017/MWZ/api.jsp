<%@ page language="java" contentType="text/json; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.*,com.shiyanlou.photo.util.*"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="fmt"
	uri="http://java.sun.com/jsp/jstl/fmt"%><%

// 这是一个API测试, 注意可以将 上面contentType 修改为contentType="text/json
// <!-- 请注意上面的 import 语句 , 用逗号分隔 -->

response.addHeader("Access-Control-Allow-Origin", "*");

// 获取远端的json数据
JSONObject json = JsonReader.readJsonFromUrl("http://api.douban.com/v2/movie/weekly");
out.println(json.toString());
//System.out.println(jo1.toString());
%>
