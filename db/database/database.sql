select * 
from books
join authors
on books.author_id = authors.id
join genres 
on books.genre_id = genres.id