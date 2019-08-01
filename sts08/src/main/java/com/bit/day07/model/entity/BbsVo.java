package com.bit.day07.model.entity;

import java.sql.Timestamp;

public class BbsVo {
	private int num, cnt;
	private String name, content, sub;
	private Timestamp nalja;
	public int getNum() {
		return num;
	}

	public BbsVo() {
	}
	
	public BbsVo(int num, int cnt, String name, String content, String sub, Timestamp nalja) {
		super();
		this.num = num;
		this.cnt = cnt;
		this.name = name;
		this.content = content;
		this.sub = sub;
		this.nalja = nalja;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public Timestamp getNalja() {
		return nalja;
	}
	public void setNalja(Timestamp nalja) {
		this.nalja = nalja;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + num;
		result = prime * result + ((sub == null) ? 0 : sub.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BbsVo other = (BbsVo) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (num != other.num)
			return false;
		if (sub == null) {
			if (other.sub != null)
				return false;
		} else if (!sub.equals(other.sub))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BbsVo [num=" + num + ", cnt=" + cnt + ", name=" + name + ", content=" + content + ", sub=" + sub
				+ ", nalja=" + nalja + "]";
	}
}
