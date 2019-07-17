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
	public List<Map<String, Object>> manageCat(String id);		// 관리하는 고양이 정보 리스트
	
	public List<Map<String, Object>> myBoardList(String id);	// 내가 쓴 자유게시판 글 리스트
	
	public List<Map<String, Object>> myBoardComment(String id);		// 내가 쓴 자유게시판 댓글
	public List<Map<String, Object>> myAdoptComment(String id);		// 내가 쓴 입양모집글 댓글
	public List<Map<String, Object>> myActComment(String id);		// 내가 쓴 고양이 활동 댓글
	public List<Map<String, Object>> myMissComment(String id);		// 내가 쓴 실종글 댓글
	
	public Map<String, Object> myBoardRead(Map<String, Object> map);
	
	public void sendMessage(Map<String, Object> map);	// 쪽지 쓰기
	
	public List<Map<String, Object>> reMessageList(String id);// 받은 쪽지 리스트
	public List<Map<String, Object>> seMessageList(String id);// 보낸 쪽지 리스트
}
