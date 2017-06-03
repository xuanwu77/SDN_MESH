package com.sdn.model;

public class RouterInfo {

	private int rtId;
	private String rtIp;
	private String memory;
	private String cpu;
	private String recRate;
	private String senRate;

	public int getRtId() {
		return rtId;
	}

	public void setRtId(int rtId) {
		this.rtId = rtId;
	}

	public String getRtIp() {
		return rtIp;
	}

	public void setRtIp(String rtIp) {
		this.rtIp = rtIp;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getCPU() {
		return cpu;
	}

	public void setCPU(String cpu) {
		this.cpu = cpu;
	}

	public String getRecRate() {
		return recRate;
	}

	public void setRecRate(String recRate) {
		this.recRate = recRate;
	}

	public String getSenRate() {
		return senRate;
	}

	public void setSenRate(String senRate) {
		this.senRate = senRate;
	}
}
