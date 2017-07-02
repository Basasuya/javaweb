package com.action;

import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.bean.*;
import com.dao.*;


public class GBuyManager extends ActionSupport {
//	private static Logger logger = Logger.getLogger(AdminManager.class);
	
	
	//������Action�����ڷ�װ�û��������������
	private List<GBuyBean> list;
	
	public List<GBuyBean> getList() {
		return list;
	}
	public void setList(List<GBuyBean> list) {
		this.list = list;
	}
	private String SearchRow;
	private String SearchKey;


	public String getSearchRow() {
		return SearchRow;
	}
	public void setSearchRow(String searchRow) {
		SearchRow = searchRow;
	}
	public String getSearchKey() {
		return SearchKey;
	}
	public void setSearchKey(String searchKey) {
		SearchKey = searchKey;
	}
	//�����û������execute����
	public String execute() throws Exception {
	//	logger.debug("start excute");
		System.out.println("hhhh");
		//������룬����ҳ�����
		HttpServletResponse response=null;
		response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		//����session����
		HttpSession session = ServletActionContext.getRequest().getSession();
		//��֤�Ƿ�������¼
		if(session.getAttribute("id")==null){
			out.print("<script language='javascript'>alert('�����µ�¼��');window.location='Login.jsp';</script>");
			out.flush();out.close();return null;
		}
		//��ѯ����
		String strWhere="1=1";
		if(!(isInvalid(SearchKey)))
		{
			strWhere+=" and "+SearchRow+"='"+SearchKey+"'";
		}
		//��ѯ����
		list=new GBuyDao().GetAllList(strWhere,"GBuy_Id");
		
		return SUCCESS;
	}
	
	//�ж��Ƿ��ֵ
	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	
	//����
	public static void main(String[] args) {
		System.out.println();
	}
	
}