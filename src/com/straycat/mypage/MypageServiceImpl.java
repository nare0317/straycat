package com.straycat.mypage;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.MemberDAO;
import com.straycat.common.dao.MypageDAO;
import com.straycat.service.MypageService;

@Service("mypage")
public class MypageServiceImpl implements MypageService
{
	@Autowired
	private MypageDAO dao;

	@Override
	public Map<String, Object> memberInfo(String id)
	{
		Map<String, Object> memberInfo = null;
		try
		{
			memberInfo = dao.selectOne("member.searchUser", id);
			System.out.println(id);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return memberInfo;
	}

	@Override
	public void updateMember(Map<String, Object> map)
	{
		try
		{
			dao.selectOne("member.userUpdate", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	}

	@Override
	public void leaveMember(Map<String, Object> map)
	{
		try
		{
			dao.selectOne("member.userLeave", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	}

	@Override
	public void logout(HttpSession session)
	{
		session.invalidate();
		
	}

	
	
	

}
