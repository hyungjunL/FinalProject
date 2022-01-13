package com.oneteam.wo9wo9.customercenter.model.dao;


import java.util.List;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

public interface CustomerCenterDao {


	Notice detail(int noticeNo);

	Notice nextDetail(int noticeNo);

	Notice beforeDetail(int noticeNo);

	int selectAllListCount();

	List<Notice> notice(PageInfo pi);

	List<Notice> search(String keyword,PageInfo pi);

	int selectSearchListCount(String keyword);

	int viewCount(int noticeNo);

	int questionListCount();

	List<Question> questionList(PageInfo pi);


	

}
