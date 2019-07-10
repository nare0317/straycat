package com.straycat.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.MemberDAO;
import com.straycat.service.MemberService;

@Service("member")
public class MemberServiceImpl implements MemberService
{
	@Autowired
	private MemberDAO dao;

	@Override
	public int checkId(String id)
	{
		int check1 = 0;
		
		try
		{
			check1 = dao.selectOne("member.checkId");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return check1;
	}

	@Override
	public int checkNickName(String nickName)
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkEmail(String email)
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkName(String Name, String tel)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	  
}
