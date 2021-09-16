use test

create TABLE student (
	ID INT NOT NULL PRIMARY KEY, /*주키 공백허용 없음*/
	name VARCHAR(10) NOT NULL, /*이름 값, 가변가능함 공백허용x*/
	dept_name VARCHAR(20) NOT NULL, /*전공이름 가변가능 공백허용x*/
	tot_cred INT NULL, /*공백가능*/
	UNIQUE(name) /*튜플에서 동일값이 못들어가도록 하는 코드*/
	)

ALTER TABLE student
ADD e_mail VARCHAR(200) NULL /*속성 추가*/

ALTER TABLE student /*속성 추가*/
ADD homepage VARCHAR(200) NULL /*위와 동*/

INSERT INTO student /*insert로 student 테이블에 값 일 대 일 대응으로 넣어주기*/
VALUES (00128, 'Zhang','Comp.Sci',102, null, null), 
		(12345, 'Shankar', 'Comp.sci', 32,null, null),
		(19991, 'Brandt', 'History', 80, null, null),
		(23121, 'Chaves', 'Finance', 102, null, null)

INSERT INTO student (ID, name, dept_name, e_mail, homepage)  /*값 넣는데 일대일 아님 결과는 null값으로 나옴*/
VALUES (11111, 'Lee', 'Comp_Sci', 'hwiee@hallym.ac.kr', 'www.google.co.kr')

SELECT*FROM student

SELECT ID,NAME /*select로 검색기능*/
FROM student 
WHERE ID>12345

DELETE student WHERE name = 'Zhang' /*투플 단위로 데이터가 관리되어서 네임만 지워도 한 줄이 사라짐*/

UPDATE student
SET e_mail ='seoseuo@naver.com'

CREATE LOGIN test WITH PASSWORD = 'password!' /*로그인 기능 만들기*/
CREATE USER test FOR LOGIN test

GRANT select ON student TO test /* test의 사용자가 student란 테이블에 select기능을 사용할 수 없도록 할 수 있다*/
/*앞선 코드에서 grant 명령문을 이용해 test의 사용자가 insert에 접근할수없도록 할 수 있다 */

