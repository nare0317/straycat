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
	public List<Map<String, Object>> manageCat(String id)
	{
		List<Map<String, Object>> manageCat = null;
		
		try
		{
			manageCat = dao.selectList("member.manageCat", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return manageCat;
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

	@Override
	public List<Map<String, Object>> myBoardList(String id)
	{
		List<Map<String, Object>> myBoardList = null;
		
		try
		{
			myBoardList = dao.selectList("member.myBoardList", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myBoardList;
	}

	@Override
	public List<Map<String, Object>> myBoardComment(String id)
	{
		List<Map<String, Object>> myBoardComment = null;
		
		try
		{
			myBoardComment = dao.selectList("member.myBoardComment", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myBoardComment;
	}

	@Override
	public List<Map<String, Object>> myAdoptComment(String id)
	{
		List<Map<String, Object>> myAdoptComment = null;
		
		try
		{
			myAdoptComment = dao.selectList("member.myAdoptComment", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myAdoptComment;
	}

	@Override
	public List<Map<String, Object>> myActComment(String id)
	{
		List<Map<String, Object>> myActComment = null;
		
		try
		{
			myActComment = dao.selectList("member.myActComment", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myActComment;
	}

	@Override
	public List<Map<String, Object>> myMissComment(String id)
	{
		List<Map<String, Object>> myMissComment = null;
		
		try
		{
			myMissComment = dao.selectList("member.myMissComment", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return myMissComment;
	}

	@Override
	public Map<String, Object> myBoardRead(Map<String, Object> map)
	{	
		Map<String, Object> myBoardRead = null;
		
		try
		{
			myBoardRead = dao.selectOne("member.myBoardRead", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return myBoardRead;
				
	}

	@Override
	public void sendMessage(Map<String, Object> map)
	{
		try
		{
			dao.selectOne("member.sendMessages", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
	}

	@Override
	public List<Map<String, Object>> reMessageList(String id)
	{
		List<Map<String, Object>> reMessageList = null;
		
		try
		{
			reMessageList = dao.selectList("member.reMessageList", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return reMessageList;
	}

	@Override
	public List<Map<String, Object>> seMessageList(String id)
	{
		List<Map<String, Object>> seMessageList = null;
		
		try
		{
			seMessageList = dao.selectList("member.seMessageList", id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return seMessageList;
	}

	@Override
	public Map<String, Object> reMessage(Map<String, Object> map)
	{
		Map<String, Object> reMessage = null;

		try
		{
			reMessage = dao.selectOne("member.reMessage", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return reMessage;
	}

	@Override
	public Map<String, Object> seMessage(Map<String, Object> map)
	{
		Map<String, Object> seMessage = null;

		try
		{
			seMessage = dao.selectOne("member.seMessage", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return seMessage;
	}

	@Override
	public Map<String, Object> readCheck(Map<String, Object> map)
	{
		Map<String, Object> readCheck = null;
		
		try
		{
			readCheck = dao.selectOne("member.readCheck", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return readCheck;
	}

	@Override
	public Map<String, Object> sedeleteMessage(Map<String, Object> map)
	{
		Map<String, Object> sedeleteMessage = null;
		
		try
		{
			sedeleteMessage = dao.selectOne("member.sedeleteMessage", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return sedeleteMessage;
	}

	
	@Override
	public Map<String, Object> redeleteMessage(Map<String, Object> map)
	{
		Map<String, Object> redeleteMessage = null;
		
		try
		{
			redeleteMessage = dao.selectOne("member.redeleteMessage", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return redeleteMessage;
	}

	

	

	
	
	

}
