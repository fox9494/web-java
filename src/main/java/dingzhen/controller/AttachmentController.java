package dingzhen.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;

import dingzhen.entity.Attachment;
import dingzhen.service.AttachmentService;
import dingzhen.util.WriterUtil;

/**
 *@author: wangq
 *@date: 2015-8-11下午03:18:56
 *@version:
 *@description：
 */
@Controller
@RequestMapping("attachment")
public class AttachmentController {

	@Autowired
	private AttachmentService<Attachment> attachmentService;
	private int page = 1;
	private int rows = 10;
	private Attachment attachment;
	
	
	@RequestMapping("attachmentList")
	public void list(HttpServletRequest request,HttpServletResponse response){
		try {
			page = Integer.parseInt(request.getParameter("page"));
			rows = Integer.parseInt(request.getParameter("rows"));
			attachment = new Attachment();
			attachment.setPage((page-1)*rows);
			attachment.setRows(rows);
			List<Attachment> list = attachmentService.findAttachment(attachment);
			int total = attachmentService.countAttachment(attachment);
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("total",total );
			jsonObj.put("rows", list);
	        WriterUtil.write(response,jsonObj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
