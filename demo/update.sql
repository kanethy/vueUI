
UPDATE xzqa_author AS u INNER JOIN (SELECT COUNT(id) AS count,author_id FROM xzqa_article GROUP BY author_id) AS a ON a.author_id = u.id SET article_number = a.count;