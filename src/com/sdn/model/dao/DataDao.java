package com.sdn.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sdn.db.DBUtil;
import com.sdn.model.RouterInfo;
import com.sdn.model.NbRouterInfo;

public class DataDao {

	RouterInfo  routerinfo = null;
	//数据库操作语法 
	//RouterInfo select	
	public List queryRouterInfo()throws Exception{
		DBUtil db = new DBUtil();
		Connection conn = db.getConnection();
		List<RouterInfo> result = new ArrayList<RouterInfo>();
		StringBuilder sb = new StringBuilder();
		sb.append(" select rtId,rtIp,memory,cpu,recRate,senRate from totaltable ");

		PreparedStatement ptmt = conn.prepareStatement(sb.toString());

		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			RouterInfo routerinfo= new RouterInfo();
			routerinfo.setRtId(rs.getInt("rtId"));
			routerinfo.setRtIp(rs.getString("rtIp"));
			routerinfo.setMemory(rs.getString("memory"));
			routerinfo.setCPU(rs.getString("cpu"));
			routerinfo.setRecRate(rs.getString("recRate"));
			routerinfo.setSenRate(rs.getString("senRate"));
			
			result.add(routerinfo);
		}
		return result;
	}
	
	//邻居节点2信息select
	public List queryNbRouterInfo2()throws Exception{
		DBUtil db = new DBUtil();
		Connection conn = db.getConnection();
		List<NbRouterInfo> result = new ArrayList<NbRouterInfo>();
		StringBuilder sb = new StringBuilder();
		sb.append(" select nbIp,delay,pktLoss,ss from 2_nb ");

		PreparedStatement ptmt = conn.prepareStatement(sb.toString());

		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			NbRouterInfo nbRouterInfo= new NbRouterInfo();
			nbRouterInfo.setNb_Ip(rs.getString("nbIp"));
			nbRouterInfo.setDelay(rs.getString("delay"));
			nbRouterInfo.setPktloss(rs.getString("pktLoss"));
			nbRouterInfo.setSS(rs.getString("ss"));
			
			
			result.add(nbRouterInfo);
		}
		return result;
	}
	
	public List queryNbRouterInfo3()throws Exception{
		DBUtil db = new DBUtil();
		Connection conn = db.getConnection();
		List<NbRouterInfo> result = new ArrayList<NbRouterInfo>();
		StringBuilder sb = new StringBuilder();
		sb.append(" select nbIp,delay,pktLoss,ss from 3_nb ");

		PreparedStatement ptmt = conn.prepareStatement(sb.toString());

		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			NbRouterInfo nbRouterInfo= new NbRouterInfo();
			nbRouterInfo.setNb_Ip(rs.getString("nbIp"));
			nbRouterInfo.setDelay(rs.getString("delay"));
			nbRouterInfo.setPktloss(rs.getString("pktLoss"));
			nbRouterInfo.setSS(rs.getString("ss"));
			
			
			result.add(nbRouterInfo);
		}
		return result;
	}
	
	public List queryNbRouterInfo4()throws Exception{
		DBUtil db = new DBUtil();
		Connection conn = db.getConnection();
		List<NbRouterInfo> result = new ArrayList<NbRouterInfo>();
		StringBuilder sb = new StringBuilder();
		sb.append(" select nbIp,delay,pktLoss,ss from 4_nb ");

		PreparedStatement ptmt = conn.prepareStatement(sb.toString());

		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			NbRouterInfo nbRouterInfo= new NbRouterInfo();
			nbRouterInfo.setNb_Ip(rs.getString("nbIp"));
			nbRouterInfo.setDelay(rs.getString("delay"));
			nbRouterInfo.setPktloss(rs.getString("pktLoss"));
			nbRouterInfo.setSS(rs.getString("ss"));
			
			
			result.add(nbRouterInfo);
		}
		return result;
	}
	
	public List queryNbRouterInfo5()throws Exception{
		DBUtil db = new DBUtil();
		Connection conn = db.getConnection();
		List<NbRouterInfo> result = new ArrayList<NbRouterInfo>();
		StringBuilder sb = new StringBuilder();
		sb.append(" select nbIp,delay,pktLoss,ss from 5_nb ");

		PreparedStatement ptmt = conn.prepareStatement(sb.toString());

		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			NbRouterInfo nbRouterInfo= new NbRouterInfo();
			nbRouterInfo.setNb_Ip(rs.getString("nbIp"));
			nbRouterInfo.setDelay(rs.getString("delay"));
			nbRouterInfo.setPktloss(rs.getString("pktLoss"));
			nbRouterInfo.setSS(rs.getString("ss"));
			
			
			result.add(nbRouterInfo);
		}
		return result;
	}
}
	
	

