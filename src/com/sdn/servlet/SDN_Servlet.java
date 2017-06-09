package com.sdn.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdn.model.NbRouterInfo;
import com.sdn.model.RouterInfo;
import com.sdn.model.dao.DataDao;

/**
 * Servlet implementation class SDN_Servlet
 */
@WebServlet("/SDN_Servlet")
public class SDN_Servlet extends HttpServlet {
	
	private List list1;
	private List list2;
	private List list3;
	private List list4;
	private List list5;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DataDao dataDao = new DataDao();
		list1 = new ArrayList();
		list2 = new ArrayList();
		list3 = new ArrayList();
		list4 = new ArrayList();
		list5 = new ArrayList();
		
		String str = "";
		String st = "";
		
		String str1 = "";
		String str2 = "";
		String str3 = "";
		String str4 = "";
		String str5 = "";
		
		String str11 = "";
		String str22 = "";
		String str33 = "";
		String str44 = "";
		String str55 = "";

		String para = request.getParameter("para");
		System.out.println(para+"...........................");
		try {
			// �ܱ���Ϣ��ȡ
			list1 = dataDao.queryRouterInfo();
			if (list1 != null) {
				if (list1.size() > 0) {
					RouterInfo routerInfo;
					for (int i = 0; i < list1.size(); i++) {
						routerInfo = (RouterInfo) list1.get(i);
						str1 += routerInfo.getRtId() + ":" + routerInfo.getRtIp() + ":" + routerInfo.getMemory() + ":"
								+ routerInfo.getCPU() + ":" + routerInfo.getRecRate() + ":" + routerInfo.getSenRate()
								+ ":";
						str11+=routerInfo.getRtId();
					}

				}

			}

			// 2����Ϣ��ȡ
			list2 = dataDao.queryNbRouterInfo2();
			if (list2 != null) {
				if (list2.size() > 0) {
					NbRouterInfo nbrouterInfo;
					for (int i = 0; i < list2.size(); i++) {
						nbrouterInfo = (NbRouterInfo) list2.get(i);
						str2 += nbrouterInfo.getNb_Ip() + ":" + nbrouterInfo.getDelay() + ":"
								+ nbrouterInfo.getPktloss() + ":" + nbrouterInfo.getSS() + ":";
						
						str22+=nbrouterInfo.getNb_Ip();
					}

				}

			}
			// 3����Ϣ��ȡ
			
			list3 = dataDao.queryNbRouterInfo3();
			if (list3 != null) {
				if (list3.size() > 0) {
					NbRouterInfo nbrouterInfo;
					for (int i = 0; i < list3.size(); i++) {
						nbrouterInfo = (NbRouterInfo) list3.get(i);
						str3 +=nbrouterInfo.getNb_Ip() + ":" + nbrouterInfo.getDelay() + ":"
								+ nbrouterInfo.getPktloss() + ":" + nbrouterInfo.getSS() + ":";
						str33+=nbrouterInfo.getNb_Ip();
					}

				}

			}

			// 4����Ϣ��ȡ
			
			list4 = dataDao.queryNbRouterInfo4();
			if (list4 != null) {
				if (list4.size() > 0) {
					NbRouterInfo nbrouterInfo;
					for (int i = 0; i < list4.size(); i++) {
						nbrouterInfo = (NbRouterInfo) list4.get(i);
						str4 += nbrouterInfo.getNb_Ip() + ":" + nbrouterInfo.getDelay() + ":"
								+ nbrouterInfo.getPktloss() + ":" + nbrouterInfo.getSS() + ":";
						str44+=nbrouterInfo.getNb_Ip();
					}

				}

			}
			// 5����Ϣ��ȡ
			
			list5 = dataDao.queryNbRouterInfo5();
			if (list5 != null) {
				if (list5.size() > 0) {
					NbRouterInfo nbrouterInfo;
					for (int i = 0; i < list5.size(); i++) {
						nbrouterInfo = (NbRouterInfo) list5.get(i);
						str5 += nbrouterInfo.getNb_Ip() + ":" + nbrouterInfo.getDelay() + ":"
								+ nbrouterInfo.getPktloss() + ":" + nbrouterInfo.getSS() + ":";
						str55+=nbrouterInfo.getNb_Ip();
					}

				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(para.equals("router")){
			str = str1 + "*" + str2 + "*" + str3 + "*" + str4 + "*" + str5;
			str = str.replaceAll("null", "");
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(str);
			out.close();
		}
		if(para.equals("topology")){
			st = str11 + "*" + str22 + "*" + str33 + "*" + str44 + "*" + str55;
			st = st.replaceAll("null", "");
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write(st);
			out.close();
		}
	}
}
