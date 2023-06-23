package polsl.pl.Books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    AuthorRepository authorRepository;
    @Autowired
    GenreRepository genreRepository;

    public List<Book> getAll(){
        List<Book> books= jdbcTemplate.query("SELECT id,title,pages,isbn,time, language,description,cover,year FROM books",
                BeanPropertyRowMapper.newInstance(Book.class));
        for (Book book : books) {
            int author_id=jdbcTemplate.queryForObject("SELECT author_id FROM books WHERE id=?",new Object[]{book.getId()}, Integer.class);
            Author author= authorRepository.getAuthorById(author_id);
            book.setAuthor(author);

            int genre_id=jdbcTemplate.queryForObject("SELECT genre_id FROM books WHERE id=?",new Object[]{book.getId()}, Integer.class);
            Genre genre= genreRepository.getGenreById(genre_id);
            book.setGenre(genre);
        }
        return books;
    }
    public Book getBookById(int id){
        try{
            Book book= jdbcTemplate.queryForObject("SELECT id,title,pages,isbn,time,language,description,cover,year FROM books WHERE" +
                    " id=?", BeanPropertyRowMapper.newInstance(Book.class),id);
            int author_id=jdbcTemplate.queryForObject("SELECT author_id FROM books WHERE id=?",new Object[]{id}, Integer.class);
            Author author= authorRepository.getAuthorById(author_id);
            book.setAuthor(author);

            int genre_id=jdbcTemplate.queryForObject("SELECT genre_id FROM books WHERE id=?",new Object[]{book.getId()}, Integer.class);
            Genre genre= genreRepository.getGenreById(genre_id);
            book.setGenre(genre);

            return book;
        }
        catch(Exception EmptyResultDataAccessException)
        {
            return null;
        }

    }

    public int save(Book book){
        int authorId= authorRepository.getAuthorIdByName(book.getAuthor().getName(),book.getAuthor().getSurname(),book.getAuthor().getCountry());
        int genreId= genreRepository.getGenreIdByName(book.getGenre().getName(),book.getGenre().getAge());
        if(authorId==-1) {
            authorRepository.save(book.getAuthor());
            authorId = authorRepository.getAuthorIdByName(book.getAuthor().getName(), book.getAuthor().getSurname(),book.getAuthor().getCountry());
        }
        if(genreId==-1) {
            genreRepository.save(book.getGenre());
            genreId = genreRepository.getGenreIdByName(book.getGenre().getName(),book.getGenre().getAge());
        }
        jdbcTemplate.update("INSERT INTO books(title,pages,isbn,time,language,description,cover,year,author_id,genre_id) VALUES(?,?,?,?,?,?,?,?,?,?)",
                book.getTitle(),book.getPages(),book.getIsbn(),book.getTime(),book.getLanguage(),book.getDescription(),book.getCover(),book.getYear(),authorId,genreId);

        return 1;

    }
    public int update(Book book){

        int oldAuthorId=getBookById(book.getId()).getAuthor().getId();
        int oldGenreId=getBookById(book.getId()).getGenre().getId();
        if (authorRepository.getAuthorIdByName(book.getAuthor().getName(), book.getAuthor().getSurname(),book.getAuthor().getCountry())==-1){
            authorRepository.save(book.getAuthor());
        }
        if (genreRepository.getGenreIdByName(book.getGenre().getName(), book.getGenre().getAge())==-1){
            genreRepository.save(book.getGenre());
        }
        int authorId=authorRepository.getAuthorIdByName(book.getAuthor().getName(), book.getAuthor().getSurname(),book.getAuthor().getCountry());
        int genreId=genreRepository.getGenreIdByName(book.getGenre().getName(), book.getGenre().getAge());

        jdbcTemplate.update("UPDATE books SET title=?, pages=?,isbn=?,time=?,language=?,description=?,cover=?,year=?,author_id=?,genre_id=? WHERE id=?",
                book.getTitle(),book.getPages(),book.getIsbn(),book.getTime(),book.getLanguage(),book.getDescription(),book.getCover(),book.getYear(),authorId,genreId,book.getId());
        authorRepository.deleteNotUsed(oldAuthorId);
        genreRepository.deleteNotUsed(oldGenreId);
        return 1;
    }
    public int delete(int id){
        Book book = getBookById(id);

        jdbcTemplate.update("DELETE FROM books WHERE id=?",id);
        if(!authorRepository.ifAuthorPeresentinDatabase(book.getAuthor())){authorRepository.delete(book.getAuthor().getId());}
        if(!genreRepository.ifGenrePeresentinDatabase(book.getGenre())){genreRepository.delete(book.getGenre().getId());}
        return 1;


    }
}
