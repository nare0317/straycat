package com.straycat.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface MypageService
{
	public Map<String, Object> memberInfo(String id);			// 유저 정보
	
	public void updateMember(Map<String, Object> map);			// 유저 정보 수정
		
	public void leaveMember(Map<String, Object> map);			// 회원 탈퇴
	
	public void logout(HttpSession session);					// 로그아웃
	
	public Map<String, Object> myInfo(String id);				// 마이페이지 정보 출력
	
	public List<Map<String, Object>> followList(String id);		// 팔로우한 고양이 정보 리스트
}
