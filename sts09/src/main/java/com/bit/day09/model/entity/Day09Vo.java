package com.bit.day09.model.entity;

import java.sql.Timestamp;

public class Day09Vo {
	private int num;
	private String name;
	private Timestamp nalja;
	public Day09Vo() {
		System.out.println("객체생성시점이시다");
	}
	public Day09Vo(int num, String name, Timestamp nalja) {
		super();
		this.num = num;
		this.name = name;
		this.nalja = nalja;
	}
	@Override
	public String toString() {
		return "Day09Vo [num=" + num + ", name=" + name + ", nalja=" + nalja + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + num;
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
		Day09Vo other = (Day09Vo) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (num != other.num)
			return false;
		return true;
	}
}
