-- 집계하기
-- 대한민국('South Korea') 국적을 가진 사람들을 조회하는 SQL을 작성한다.
SELECT * FROM user WHERE country = 'South Korea';
-- 대한민국('South Korea') 국적을 가진 사람들의 나이의 최대 최소 조회
-- Aggregate Functions
-- 여러 행을 반환받고 그 행들의 데이터를 바탕으로 결과를 계산
-- COUNT(), AVG(), MAX(), MIN(), SUM()

SELECT COUNT(country) FROM user;

-- 대한민국('South Korea') 국적을 가진 사람들이 몇명인지를 조회
SELECT COUNT(*) FROM user WHERE country = 'South Korea';

SELECT AVG(balance) FROM user;
-- 대한민국('South Korea') 국적을 가진 사람들의 잔고의 평균 조회
SELECT AVG(balance) FROM user WHERE country = 'South Korea';
SELECT AVG(balance) FROM user WHERE country = 'South Korea';

-- 나이가 30 이상인 사람들의 잔고의 평균 조회

    SELECT country, AVG(balance)
    FROM user
    GROUP BY country
    ORDER BY min(balance);

--
SELECT first_name, COUNT(*)
FROM user
GROUP BY first_name;

