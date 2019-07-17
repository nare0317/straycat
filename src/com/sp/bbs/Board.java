/*==============================
   #01. Board.java
==============================*/

package com.sp.bbs;

public class Board
{
	// 주요 속성 구성 → BBS 테이블 레코드
	private int listNum, num;	
	//-- 목록상 리스트 번호, 게시물 번호
	private String subject, content, name, pwd, created, ipAddr;
	//-- 게시물 제목, 내용, 작성자, 패스워드, 작성일, 아이피주소
	private int hitCount;
	//-- 조회수

	// getter / setter 구성
	public int getListNum()
	{
		return listNum;
	}

	public void setListNum(int listNum)
	{
		this.listNum = listNum;
	}

	public int getNum()
	{
		return num;
	}

	public void setNum(int num)
	{
		this.num = num;
	}

	public String getSubject()
	{
		return subject;
	}

	public void setSubject(String subject)
	{
		this.subject = subject;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getPwd()
	{
		return pwd;
	}

	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}

	public String getCreated()
	{
		return created;
	}

	public void setCreated(String created)
	{
		this.created = created;
	}

	public String getIpAddr()
	{
		return ipAddr;
	}

	public void setIpAddr(String ipAddr)
	{
		this.ipAddr = ipAddr;
	}

	public int getHitCount()
	{
		return hitCount;
	}

	public void setHitCount(int hitCount)
	{
		this.hitCount = hitCount;
	}

}
