package com.oneteam.wo9wo9.customercenter.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.customercenter.model.dao.CustomerCenterDao;
import com.oneteam.wo9wo9.customercenter.model.vo.Notice;

@Service
public class CustomerCenterServiceImpl implements CustomerCenterService {
	@Autowired
	private CustomerCenterDao customerCenterDao;

	@Override
	public List<Notice> notice() {
		// TODO Auto-generated method stub
		return customerCenterDao.notice();
	}

	@Override
	public Notice detail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.detail(noticeNo);
	}

	@Override
	public Notice nextDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.nextDetail(noticeNo);
	}

	@Override
	public Notice beforeDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.beforeDetail(noticeNo);
	}
	
	
}
