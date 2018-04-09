package db;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapClient {
//	private static SqlSession sqlSession;
//	static {
//		try {
//			Reader reader = Resources.getResourceAsReader("db/sqlMapConfig.xml");
//			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(reader);
//			sqlSession = factory.openSession(true);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
//	public static SqlSession getSqlSession() {
//		return sqlSession;
//	}
	
	private SqlSession sqlSession;
	
	public SqlMapClient() {
		try {
			Reader reader = Resources.getResourceAsReader("db/sqlMapConfig.xml");
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(reader);
			this.sqlSession = factory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
}
