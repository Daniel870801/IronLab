#CHALLENGE_1

SELECT au_id AS `AUTHOR ID`, au_lname AS `LAST NAME`, au_fname AS `FIRST NAME`, title AS TITLE, publishers.pub_name AS PUBLISHER
FROM
(SELECT au_id, au_lname, au_fname, titles.title, titles.pub_id
FROM 
(SELECT authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id) AS A
INNER JOIN titles
ON A.title_id = titles.title_id) AS B
INNER JOIN publishers
ON B.pub_id = publishers.pub_id
ORDER BY B.au_id ASC, B.title DESC;

#CHALLENGE_2
SELECT B.au_id AS `AUTHOR ID`, B.au_lname AS `LAST NAME`, B.au_fname AS `FIRST NAME`, publishers.pub_name AS PUBLISHER, COUNT(B.title) AS `TITLE COUNT`
FROM
(SELECT A.au_id, A.au_lname, A.au_fname, titles.title, titles.pub_id
FROM 
(SELECT authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id) AS A
INNER JOIN titles
ON A.title_id = titles.title_id) AS B
INNER JOIN publishers
ON B.pub_id = publishers.pub_id
GROUP BY `AUTHOR ID`, PUBLISHER
ORDER BY `AUTHOR ID` DESC, PUBLISHER DESC;


#CHALLENGE_3
SELECT authors.au_id AS `AUTHOR ID`, authors.au_lname AS `LAST NAME`, authors.au_fname AS `FIRST NAME`, TOTAL
FROM
(SELECT titleauthor.au_id, SUM(sales.qty) AS TOTAL
FROM titleauthor
INNER JOIN sales
ON titleauthor.title_id = sales.title_id
GROUP BY titleauthor.au_id) AS A
LEFT JOIN authors
ON authors.au_id = A.au_id
ORDER BY TOTAL DESC
LIMIT 3;

#CHALLENGE_4
SELECT authors.au_id AS `AUTHOR ID`, authors.au_lname AS `LAST NAME`, authors.au_fname AS `FIRST NAME`, IFNULL(TOTAL,0) AS TOTAL
FROM
(SELECT titleauthor.au_id, SUM(sales.qty) AS TOTAL
FROM titleauthor
INNER JOIN sales
ON titleauthor.title_id = sales.title_id
GROUP BY titleauthor.au_id) AS A
RIGHT JOIN authors
ON authors.au_id = A.au_id
ORDER BY TOTAL DESC;


