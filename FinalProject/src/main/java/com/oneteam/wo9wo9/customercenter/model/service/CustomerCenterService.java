package com.oneteam.wo9wo9.customercenter.model.service;

import java.util.List;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;

public interface CustomerCenterService {

	List<Notice> notice();

	Notice detail(int noticeNo);

	Notice nextDetail(int noticeNo);

	Notice beforeDetail(int noticeNo);

	



}
