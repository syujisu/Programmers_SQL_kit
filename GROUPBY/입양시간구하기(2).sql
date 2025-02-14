/*보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다.
 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 
이때 결과는 시간대 순으로 정렬해야 합니다.*/

--UNION 사용
SELECT H1.HOUR, IFNULL(OUTS.COUNT,0) AS COUNT 
FROM ( 
    SELECT 0 AS HOUR 
    UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 
    UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 
    UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12
     UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16 
     UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20 
     UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 ) H1 
     LEFT JOIN ( 
         SELECT HOUR(DATETIME) AS 'HOUR', COUNT(*) AS 'COUNT' 
         FROM ANIMAL_OUTS 
         GROUP BY HOUR) AS OUTS ON H1.HOUR = OUTS.HOUR


--변수 사용
--SET @HOUR_LIST = -1; 
--SELECT 
--(@HOUR_LIST := @HOUR_LIST + 1) AS 'HOUR',
--(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @HOUR_LIST) AS 'COUNTS' 
--FROM ANIMAL_OUTS 
--WHERE @HOUR_LIST <23;