package polsl.pl.Books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.security.KeyStore;
import java.util.List;

@Repository
public class AuthorRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Author> getAllAuthors(){
        return jdbcTemplate.query("SELECT id,name,surname,country FROM authors",
                BeanPropertyRowMapper.newInstance(Author.class));
    }
    public Author getAuthorById(int id){
        return jdbcTemplate.queryForObject("SELECT id,name,surname,country FROM authors WHERE" +
                " id=?", BeanPropertyRowMapper.newInstance(Author.class),id);
    }

    public int save(Author author){
        jdbcTemplate.update("INSERT INTO authors(name,surname,country) VALUES(?,?,?)",
                author.getName(),author.getSurname(),author.getCountry()
        );
        return 1;
    }
    public int delete(int id){
        return jdbcTemplate.update("DELETE FROM authors WHERE id=?",id);
    }
    public int deleteNotUsed(int id){
        if(jdbcTemplate.queryForObject("SELECT COUNT(*)FROM books WHERE author_id=?",new Object[]{id}, Integer.class)==0){
             return delete(id);
        }
        return 0;
    }
    public boolean ifAuthorPeresentinDatabase(Author author){
        if(jdbcTemplate.queryForObject("SELECT COUNT(*)FROM books WHERE author_id=?",new Object[]{author.getId()}, Integer.class)>0)
            return true;
        return false;
    }
    public int getAuthorIdByName(String name,String surname,String country){
        try {
            int id=jdbcTemplate.queryForObject("SELECT id FROM authors WHERE name=? and surname=? and country=?",new Object[]{name,surname,country}, Integer.class);
            return id;
        }
        catch (Exception EmptyResultDataAccessException)
        {
            return -1;
        }
    }
}
