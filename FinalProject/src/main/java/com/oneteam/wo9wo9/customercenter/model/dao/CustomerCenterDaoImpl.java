package com.oneteam.wo9wo9.customercenter.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;

@Repository
public class CustomerCenterDaoImpl implements CustomerCenterDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Notice> notice() {
		return sqlSession.selectList("notice.notice");
	}

	@Override
	public Notice detail(int noticeNo) {
		return sqlSession.selectOne("notice.detail",noticeNo);
	}

	@Override
	public Notice nextDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("notice.nextDetail",noticeNo);
	}

	@Override
	public Notice beforeDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("notice.beforeDetail",noticeNo);
	}
	

}
