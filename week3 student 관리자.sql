use test

create TABLE student (
	ID INT NOT NULL PRIMARY KEY, /*��Ű ������� ����*/
	name VARCHAR(10) NOT NULL, /*�̸� ��, ���������� �������x*/
	dept_name VARCHAR(20) NOT NULL, /*�����̸� �������� �������x*/
	tot_cred INT NULL, /*���鰡��*/
	UNIQUE(name) /*Ʃ�ÿ��� ���ϰ��� �������� �ϴ� �ڵ�*/
	)

ALTER TABLE student
ADD e_mail VARCHAR(200) NULL /*�Ӽ� �߰�*/

ALTER TABLE student /*�Ӽ� �߰�*/
ADD homepage VARCHAR(200) NULL /*���� ��*/

INSERT INTO student /*insert�� student ���̺� �� �� �� �� �������� �־��ֱ�*/
VALUES (00128, 'Zhang','Comp.Sci',102, null, null), 
		(12345, 'Shankar', 'Comp.sci', 32,null, null),
		(19991, 'Brandt', 'History', 80, null, null),
		(23121, 'Chaves', 'Finance', 102, null, null)

INSERT INTO student (ID, name, dept_name, e_mail, homepage)  /*�� �ִµ� �ϴ��� �ƴ� ����� null������ ����*/
VALUES (11111, 'Lee', 'Comp_Sci', 'hwiee@hallym.ac.kr', 'www.google.co.kr')

SELECT*FROM student

SELECT ID,NAME /*select�� �˻����*/
FROM student 
WHERE ID>12345

DELETE student WHERE name = 'Zhang' /*���� ������ �����Ͱ� �����Ǿ ���Ӹ� ������ �� ���� �����*/

UPDATE student
SET e_mail ='seoseuo@naver.com'

CREATE LOGIN test WITH PASSWORD = 'password!' /*�α��� ��� �����*/
CREATE USER test FOR LOGIN test

GRANT select ON student TO test /* test�� ����ڰ� student�� ���̺� select����� ����� �� ������ �� �� �ִ�*/
/*�ռ� �ڵ忡�� grant ��ɹ��� �̿��� test�� ����ڰ� insert�� �����Ҽ������� �� �� �ִ� */

