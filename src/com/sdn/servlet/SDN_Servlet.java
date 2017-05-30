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
	private List list;
	
	private static final long serialVersionUID = 1L;
	
    public SDN_Servlet() {
        super();
        
    }
    
    public void init() throws ServletException{
    	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       		
		
		DataDao dataDao=new DataDao();
		list = new ArrayList<>();
		String str = "";
		String str1="";
		String str2="";
		String str3="";
		String str4="";
		String str5="";
		
		try {	
			//总表信息读取
			list=dataDao.queryRouterInfo();
			if(list!=null) {
		        if(list.size()>0){   						  
		      	   RouterInfo routerInfo;
		            for(int i=0;i<list.size();i++){
		            	routerInfo=(RouterInfo)list.get(i); 
		          	 /* str = str.append(epcData.getIp()).append(":").append(epcData.getSyn()).append(":")
		          	.append(epcData.geteNode()).append(":").append(epcData.getPlmn()).append(":")
		          	.append(epcData.getTac()).append(":").append(epcData.getPci()).append(":").append(epcData.getCell_id());*/
		          	  str1 += routerInfo.getRtId()+":"+routerInfo.getRtIp()+":"+routerInfo.getMemory()+
		          			":"+routerInfo.getCPU()+":"+routerInfo.getRecRate()+":"+routerInfo.getSenRate()+":";
		          	  System.out.println(str);
		     	      }
		            
		 		   }
		        
			}
			
			//2表信息读取
			list.clear();
			list=dataDao.queryNbRouterInfo2();
			if(list!=null) {
		        if(list.size()>0){   						  
		      	   NbRouterInfo nbrouterInfo;
		            for(int i=0;i<list.size();i++){
		            	nbrouterInfo=(NbRouterInfo)list.get(i); 
		          	 /* str = str.append(epcData.getIp()).append(":").append(epcData.getSyn()).append(":")
		          	.append(epcData.geteNode()).append(":").append(epcData.getPlmn()).append(":")
		          	.append(epcData.getTac()).append(":").append(epcData.getPci()).append(":").append(epcData.getCell_id());*/
		          	  str2 += nbrouterInfo.getNb_Ip()+":"+nbrouterInfo.getDelay()+":"+nbrouterInfo.getPktloss()+":"+nbrouterInfo.getSS()+
		          			":";
		          	  System.out.println(str2);
		     	      }
		            
		 		   }
		        
			}	
			//3表信息读取
			list.clear();
			list=dataDao.queryNbRouterInfo3();
			if(list!=null) {
		        if(list.size()>0){   						  
		      	   NbRouterInfo nbrouterInfo;
		            for(int i=0;i<list.size();i++){
		            	nbrouterInfo=(NbRouterInfo)list.get(i); 
		          	 /* str = str.append(epcData.getIp()).append(":").append(epcData.getSyn()).append(":")
		          	.append(epcData.geteNode()).append(":").append(epcData.getPlmn()).append(":")
		          	.append(epcData.getTac()).append(":").append(epcData.getPci()).append(":").append(epcData.getCell_id());*/
		          	  str3 += nbrouterInfo.getNb_Ip()+":"+nbrouterInfo.getDelay()+":"+nbrouterInfo.getPktloss()+":"+nbrouterInfo.getSS()+
		          			":";
		          	  System.out.println(str3);
		     	      }
		            
		 		   }
		        
			}
			
			//4表信息读取
			list.clear();
			list=dataDao.queryNbRouterInfo4();
			if(list!=null) {
		        if(list.size()>0){   						  
		      	   NbRouterInfo nbrouterInfo;
		            for(int i=0;i<list.size();i++){
		            	nbrouterInfo=(NbRouterInfo)list.get(i); 
		          	 /* str = str.append(epcData.getIp()).append(":").append(epcData.getSyn()).append(":")
		          	.append(epcData.geteNode()).append(":").append(epcData.getPlmn()).append(":")
		          	.append(epcData.getTac()).append(":").append(epcData.getPci()).append(":").append(epcData.getCell_id());*/
		          	  str4 += nbrouterInfo.getNb_Ip()+":"+nbrouterInfo.getDelay()+":"+nbrouterInfo.getPktloss()+":"+nbrouterInfo.getSS()+
		          			":";
		          	  System.out.println(str4);
		     	      }
		            
		 		   }
		        
			}
			//5表信息读取
			list.clear();
			list=dataDao.queryNbRouterInfo5();
			if(list!=null) {
		        if(list.size()>0){   						  
		      	   NbRouterInfo nbrouterInfo;
		            for(int i=0;i<list.size();i++){
		            	nbrouterInfo=(NbRouterInfo)list.get(i); 
		          	 /* str = str.append(epcData.getIp()).append(":").append(epcData.getSyn()).append(":")
		          	.append(epcData.geteNode()).append(":").append(epcData.getPlmn()).append(":")
		          	.append(epcData.getTac()).append(":").append(epcData.getPci()).append(":").append(epcData.getCell_id());*/
		          	  str5 += nbrouterInfo.getNb_Ip()+":"+nbrouterInfo.getDelay()+":"+nbrouterInfo.getPktloss()+":"+nbrouterInfo.getSS()+
		          			":";
		          	  System.out.println(str5);
		     	      }
		            
		 		   }
		        
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		str = str1+"*"+str2+"*"+str3+"*"+str4+"*"+str5;
		str = str.replaceAll("null", "");
		response.setContentType("text/xml;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write(str);
        out.close();
		list.clear();
	}
}
