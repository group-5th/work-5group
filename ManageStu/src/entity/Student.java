package entity;//database��

public class Student {//student��
	private String name; //student���������
	private String birDate;
	private String gender;
	private int id;
	public String getName() {//��ȡ����
		return name;
	}
	public void setName(String name) {//��������
		this.name = name;
	}
	public String getBirDate() {//��ȡ����
		return birDate;
	}
	public void setBirDate(String birDate) {//��������
		this.birDate = birDate;
	}
	public String getGender() {//��ȡ�Ա�
		return gender;
	}
	public void setGender(String gender) {//�����Ա�
		this.gender = gender;
	}
	public int getId() {//��ȡid
		return id;
	}
	public void setId(int id) {//����id
		this.id = id;
	}
}
