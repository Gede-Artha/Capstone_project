package com.wdf.springmvc.model;

import javax.servlet.http.HttpServletRequest;

public class AppendURL {

	 public static String getSiteURL(HttpServletRequest request) {
	        String siteURL = request.getRequestURL().toString();
	        return siteURL.replace(request.getServletPath(), "");
	    }
}
