package com.straycat.mypage;

import java.util.List;
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

	@Override
	public Map<String, Object> myInfo(String id)
	{
		Map<String, Object> myInfo = null;
		
		try
		{
			myInfo = dao.selectOne("member.memberList", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myInfo;
	}

	@Override
	public List<Map<String, Object>> followList(String id)
	{
		List<Map<String, Object>> followList = null;
		
		try
		{
			followList = dao.selectList("member.followList", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return followList;
	}

	
	
	

}
