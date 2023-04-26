SELECT
    User.user_id,
    User.username,
    training_id,
    training_date,
    COUNT(*) AS count
FROM
    User
        INNER JOIN
    Training_details ON User.user_id = Training_details.user_id
GROUP BY User.username , training_id
HAVING count > 1
ORDER BY training_date DESC

