package com.yjh.system.core.db;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionFactory {
	private static final SqlSessionFactory sqlSessionFactory;
	private static final ThreadLocal<SqlSession> sqlSession = new ThreadLocal<>();
	
	static {
		String resource = "mybatis-config.xml";
		try(InputStream inputStream = Resources.getResourceAsStream(resource)) {
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			throw new AssertionError(e.getMessage());
		}
	}

	public SqlSession currentSession() {
		if(sqlSession.get() == null)
			sqlSession.set(sqlSessionFactory.openSession());
		return sqlSession.get();
	}
	public void commit() {
		SqlSession session = sqlSession.get();
		if(session != null)
			session.commit();
	}
	public void rollback() {
		SqlSession session = sqlSession.get();
		if(session != null)
			session.rollback();
	}
	public void close() {
		SqlSession session = sqlSession.get();
		if(session != null)
			sqlSession.remove();
	}
	public void commitAndClose() {
		SqlSession session = sqlSession.get();
		if(session != null) {
			session.commit();
			sqlSession.remove();
		}
	}
	public void rollbackAndClose() {
		SqlSession session = sqlSession.get();
		if(session != null) {
			session.rollback();
			sqlSession.remove();
		}
	}
	public static void main(String[] args) {
		System.out.println(1);
	}
}
