package com.human.edu;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.human.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class TestMemberService {
	@Inject
	private DataSource dataSource;
	@Inject
	private MemberService memberService;
	
	@Test
	public void memberSelect() throws Exception {
		//JUnit으로 멤버서비스 CRUD 중 Read셀렉트 테스트
		System.out.println("디버그 1개 레코드 : "+ memberService.memberView("user2"));
		System.out.println("디버그 다중 레코드 : "+ memberService.memberSelect());
	}
	
	@Test
	public void oracle_connect() throws SQLException {
		Connection connect = dataSource.getConnection();
		System.out.println("현재 접속된 DB커넥션 :" + connect);	
	}
	@Test
	public void junit_test() {
		System.out.println("JUnit 실행 확인 메소드");
	}
}
