package com.sp.common;

import org.springframework.stereotype.Service;

@Service("myUtil")
public class MyUtil 
{
	/**
	 * 전체 페이지수를 구하는 메소드
	 * @param rows				한 화면에 출력할 데이터 개수
	 * @param dataCount		총 데이터 개수
	 * @return						총 페이지 수
	 */
	public int pageCount(int rows, int dataCount) 
	{
		if (dataCount <= 0) 
			return 0;
	
		return dataCount / rows + (dataCount % rows > 0 ? 1 : 0);
	}
	
	/**
	 * 페이징(paging) 처리를 하는 메소드(GET 방식, a 태그를 이용하여 해당 페이지의 URL로 이동)
	 * @param current_page		화면에 출력할 페이지 번호
	 * @param total_page			총 페이지 수
	 * @param list_url					페이지 번호에 link를 설정할 URL
	 * @return							페이징 처리 결과
	 */
	public String paging(int current_page, int total_page, String list_url) 
	{
		StringBuffer sb = new StringBuffer();
		
		int numPerBlock=10;
		int currentPageSetup;
		int n, page;
		
		if (current_page<1 || total_page < 1)
			return "";
		
		if (list_url.indexOf("?") != -1)
			list_url+="&";
		else
			list_url+="?";
		
		// currentPageSetup : 표시할첫페이지-1
		currentPageSetup=(current_page/numPerBlock)*numPerBlock;
		if(current_page%numPerBlock==0)
			currentPageSetup=currentPageSetup-numPerBlock;

		sb.append("<div id='paginate'>");
		
		// 처음페이지, 이전(10페이지 전)
		n = current_page-numPerBlock;
		if (total_page > numPerBlock && currentPageSetup > 0) 
		{
			sb.append("<a href='"+list_url+"page=1'>처음</a>");
			sb.append("<a href='"+list_url+"page="+n+"'>이전</a>");
		}
		
		// 바로가기
		page = currentPageSetup + 1;
		while (page<=total_page && page <=(currentPageSetup+numPerBlock)) 
		{
			if (page==current_page) 
				sb.append("<span class='curBox'>"+page+"</span>");
			else
				sb.append("<a href='"+list_url+"page="+page+"' class='numBox'>"+page+"</a>");
			
			page++;
		}
		
		// 다음(10페이지 후), 마지막페이지
		n = current_page + numPerBlock;
		if (n > total_page) 
			n = total_page;
		if (total_page - currentPageSetup > numPerBlock) 
		{
			sb.append("<a href='"+list_url+"page="+n+"'>다음</a>");
			sb.append("<a href='"+list_url+"page="+total_page+"'>끝</a>");
		}
		sb.append("</div>");
	
		return sb.toString();
	}

	/**
	 * javascript를 이용하여 페이징 처리를 하는  메소드 : javascript의 listPage(page) 함수를 호출
	 * @param current_page		화면에 출력할 페이지 번호
	 * @param total_page			총 페이지 수
	 * @return							페이징 처리 결과
	 */
    public String paging(int current_page, int total_page) 
    {
		if (current_page < 1 || total_page < 1)
			return "";

        int numPerBlock = 10;   // 리스트에 나타낼 페이지 수
        int currentPageSetUp;
        int n;
        int page;
        StringBuffer sb = new StringBuffer();
        
        // 표시할 첫 페이지
        currentPageSetUp = (current_page / numPerBlock) * numPerBlock;
        if (current_page % numPerBlock == 0)
            currentPageSetUp = currentPageSetUp - numPerBlock;

		sb.append("<div id='paginate'>");
        
        // 처음페이지, 이전(10페이지 전)
        n = current_page - numPerBlock;
        if ((total_page > numPerBlock) && (currentPageSetUp > 0)) 
        {
			sb.append("<a onclick='listPage(1);'>처음</a>");
			sb.append("<a onclick='listPage("+n+");'>이전</a>");
        }

        // 바로가기 페이지 구현
        page = currentPageSetUp + 1;
        while ((page <= total_page) && (page <= currentPageSetUp + numPerBlock)) 
        {
           if (page == current_page) 
        	   sb.append("<span class='curBox'>"+page+"</span>");
           else
			   sb.append("<a onclick='listPage("+page+");' class='numBox'>"+page+"</a>");

           page++;
        }

        // 다음(10페이지 후), 마지막 페이지
        n = current_page + numPerBlock;
		if (n > total_page) 
			n = total_page;
        if (total_page - currentPageSetUp > numPerBlock) 
        {
			sb.append("<a onclick='listPage("+n+");'>다음</a>");
			sb.append("<a onclick='listPage("+total_page+");'>끝</a>");
        }
		sb.append("</div>");

        return sb.toString();
    }

    /**
     * 특수 문자를 HTML 문자로 변경 및 엔터를 <br>로 변경 하는 메소드
     * @param str		특수 문자를 HTML 문자로 변경할 문자열
     * @return			특수 문자가 HTML 문자로 변경된 문자열
     */
    public String htmlSymbols(String str) 
    {
    	if (str == null || str.length() == 0)
    		return "";
    	
    	str = str.replaceAll("&", "&amp;");
    	str = str.replaceAll("\"", "&quot;");
    	str = str.replaceAll(">", "&gt;");
    	str = str.replaceAll("<", "&lt;");
    	
    	str = str.replaceAll(" ", "&nbsp;"); // \\s를 사용할 경우 \n 아래에서 사용해야 한다.
    	str = str.replaceAll("\n", "<br>");
    	
    	return str;
    }
}








