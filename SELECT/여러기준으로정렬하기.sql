/*동물 보호소에 들어온 모든 동물의 
아이디와 이름, 보호 시작일을 이름 순으로 조회하는 
SQL문을 작성해주세요. 단, 이름이 같은 동물 중에서는 
보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.*/

-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY 2 ASC , 3 DESC

--이름을 기준으로 삼아 오름차순 정렬 후 날짜 기준으로 내림차순 