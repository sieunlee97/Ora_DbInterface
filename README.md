#### 20210225 (목)
- Update쿼리에서 regdate=sysdate 를 regdate=#{regdate}로 사용자가 수정 가능하도록 수정함.(updatedate도 수정)
- 따라서 Junit테스트 Update 메소드 수정

```java
	Date nowDate = new Date();
		memberVO.setRegdate(nowDate);
		memberVO.setUpdatedate(nowDate);
```
- > 원래대로 테스트하면 regdate, updatedate에 null이 들어가서 오류 발생. 날짜 형식은 null이 들어갈 수 없다.
- 달력 기능 추가
- > 아래 script, link 추가.

```
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
```
- regdate, updatedate의 input에 class="date1", class="date2" 추가
- JQuery 추가

```
$(".date1").datepicker({
	dateFormat:"yy-mm-dd"
});

$(".date2").datepicker({
	dateFormat:"yy-mm-dd"
});
```

#### 20210224 (수)
- <작업예정>
- [x] JUnit CRUD 테스트
- [X] jsp 화면에서 CRUD 작업
<p align="center">
<img  src="https://user-images.githubusercontent.com/63999784/108972078-4d744600-76c6-11eb-9e30-c58e7f3f18a1.PNG" alt="home.jsp화면사진">
</p>
- [X] 과제물 정리
- [ ] egov 마무리
- [ ] C언어 구구단 프로그램 설명

<수업>
- 한글 입출력이 깨질 때, web.xml에서 http전송값을 UTF-8로 잡아주는 설정 추가.
- CRUD 중 Update에서 regdate, updatedate 수정 시, 형식 mismatch 오류 해결
- > MemberVO에  @DateTimeFormat(pattern="yyyy-MM-dd") 추가

#### 20210223 (화)
- 오라클에 member테이블 생성 + 더미데이터 입력
- Ora_DbInterfacee 스프링 MVC 프로젝트 생성
- pom.xml로 자바, 스프링, 마이바티스 업데이트 
- 메이븐 업데이트.
- 프로젝트 Facets부분 web_module = 3.1 변경
- web.xml의 웹모듈버전 2.5 -> 3.1 변경
- 깃 연동.
- root-context.xml에 DB커넥션 Bean 생성
- log4jdbc.log4j2.properties 필수 생성 : 역할 - 쿼리를 콘솔에서 디버그 가능
- mappers 폴더 생성 후 sampleMapper.xml 쿼리파일생성(CRUD쿼리)
- 쿼리에서 발생되는 반환값을 담을 공간 = VO클래스로 해결.
- service패키지(MemberService, MemberServiceImpl, MemberDAO)
- > @Repository, @Service 어노테이션 추가
- servlet-context.xml에 component-scan 추가

```
<context:component-scan base-package="com.human.service" />
```
- JUnit 테스트 
