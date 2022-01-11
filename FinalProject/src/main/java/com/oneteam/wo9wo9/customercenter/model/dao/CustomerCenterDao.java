package com.oneteam.wo9wo9.customercenter.model.dao;

import java.util.List;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;

public interface CustomerCenterDao {

	List<Notice> notice();

	Notice detail(int noticeNo);

	Notice nextDetail(int noticeNo);

	Notice beforeDetail(int noticeNo);

	

}
