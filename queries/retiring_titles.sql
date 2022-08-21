SELECT
    count(title) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY 1 DESC;
