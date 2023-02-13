/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59414

문제 설명
ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다.
 ANIMAL_INS 테이블 구조는 다음과 같으며, 
 ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
  각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

NAME	TYPE	NULLABLE
ANIMAL_ID	VARCHAR(N)	FALSE
ANIMAL_TYPE	VARCHAR(N)	FALSE
DATETIME	DATETIME	FALSE
INTAKE_CONDITION	VARCHAR(N)	FALSE
NAME	VARCHAR(N)	TRUE
SEX_UPON_INTAKE	VARCHAR(N)	FALSE
ANIMAL_INS 테이블에 등록된 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜1를 조회하는 SQL문을 작성해주세요. 이때 결과는 아이디 순으로 조회해야 합니다.

예시
예를 들어, ANIMAL_INS 테이블이 다음과 같다면

ANIMAL_INS

ANIMAL_ID	ANIMAL_TYPE	DATETIME	INTAKE_CONDITION	NAME	SEX_UPON_INTAKE
A349996	Cat	2018-01-22 14:32:00	Normal	Sugar	Neutered Male
A350276	Cat	2017-08-13 13:50:00	Normal	Jewel	Spayed Female
A350375	Cat	2017-03-06 15:01:00	Normal	Meo	Neutered Male
A352555	Dog	2014-08-08 04:20:00	Normal	Harley	Spayed Female
A352713	Cat	2017-04-13 16:29:00	Normal	Gia	Spayed Female
SQL문을 실행하면 다음과 같이 나와야 합니다.

ANIMAL_ID	NAME	날짜
A349996	Sugar	2018-01-22
A350276	Jewel	2017-08-13
A350375	Meo	2017-03-06
A352555	Harley	2014-08-08
A352713	Gia	2017-04-13

LEFT 
Left함수는 문자열을 받아서 왼쪽부터 원하는 길이만큼 자르는 함수

--문법--
LEFT(문자열,길이)
--예시--
LEFT(NAME,2)

RIGHT
RIGHT함수는 LEFT함수와 기능은 같지만 방향만 다른 함수입니다.

--문법--
RIGHT(문자열,길이)
--예시--
RIGHT(NAME,3)

SUBSTRING
SubString함수의 기능은 문자열을 받아서 일정한 영역만큼 잘라낸 후 리턴하는 기능을 가지고 있습니다.

--문법--
SUBSTRING(문자열,시작자리번호,자를문자수)
--예시--
SUBSTRING(resident_number,0,6)

SELECT ANIMAL_ID, NAME, 
SUBSTRING(DATETIME, 1, 10) AS '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC
*/

SELECT ANIMAL_ID, NAME, 
LEFT(DATETIME, 10) AS '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC