package com.straycat.member;

import java.util.Map;

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
			check1 = dao.selectOne("member.checkId", id);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return check1;
	}

	@Override
	public int checkNickName(String nickName)
	{
		int check2 = 0;
		try
		{
			check2 = dao.selectOne("member.checkNickName", nickName);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return check2;
	}

	@Override
	public int checkEmail(String email)
	{
		int check3 = 0;
		try
		{
			check3 = dao.selectOne("member.checkEmail", email);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return check3;
	}

	
	@Override
	public int checkName(Map<String, Object> map)
	{
		int check4 = 0;
		try
		{
			check4 = dao.selectOne("member.checkName", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return check4;
	}
	 
	
	
	  
}
