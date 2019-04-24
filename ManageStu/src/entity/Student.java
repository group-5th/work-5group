package entity;//database包

public class Student {//student类
	private String name; //student的相关属性
	private String birDate;
	private String gender;
	private int id;
	public String getName() {//获取名字
		return name;
	}
	public void setName(String name) {//创建名字
		this.name = name;
	}
	public String getBirDate() {//获取生日
		return birDate;
	}
	public void setBirDate(String birDate) {//创建生日
		this.birDate = birDate;
	}
	public String getGender() {//获取性别
		return gender;
	}
	public void setGender(String gender) {//创造性别
		this.gender = gender;
	}
	public int getId() {//获取id
		return id;
	}
	public void setId(int id) {//创造id
		this.id = id;
	}
}
