USE lesson_4;

-- 1. Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.
SELECT 
	COUNT(*) AS 'Общее кол-во лайков'
FROM likes
WHERE user_id IN (
	SELECT user_id 
	FROM profiles
	WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 12);


-- проверяем кол-во и id пользователей, которые удовлетворяют условиям
SELECT * FROM profiles 
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 12;


-- 2. Определить кто больше поставил лайков (всего): мужчины или женщины.
SELECT CASE (gender)
	WHEN 'm' THEN 'Мужчины'
	WHEN 'f' THEN 'Женщины'
    END AS 'Больше лайков ставят:', COUNT(*) as 'Кол-во лайков'
FROM profiles p 
JOIN likes l 
WHERE l.user_id = p.user_id
GROUP BY gender 
LIMIT 1; -- для проверки можно увеличить LIMIT


-- 3. Вывести всех пользователей, которые не отправляли сообщения.
SELECT DISTINCT CONCAT(firstname, ' ', lastname, ' (id: ', (id), ')') AS 'Не отправляют сообщения'
FROM users
WHERE NOT EXISTS (
	SELECT from_user_id
	FROM messages
	WHERE users.id = messages.from_user_id
);
