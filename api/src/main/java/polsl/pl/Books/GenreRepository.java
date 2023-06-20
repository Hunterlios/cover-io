package polsl.pl.Books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GenreRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    public List<Genre> getAllGenres(){
        return jdbcTemplate.query("SELECT id,name,age FROM genres",
                BeanPropertyRowMapper.newInstance(Genre.class));
    }
    public Genre getGenreById(int id){
        return jdbcTemplate.queryForObject("SELECT id,name,age FROM genres WHERE" +
                " id=?", BeanPropertyRowMapper.newInstance(Genre.class),id);
    }

    public int save(Genre genre){
        jdbcTemplate.update("INSERT INTO genres(name,age) VALUES(?,?)",
                genre.getName(),genre.getAge()
        );
        return 1;
    }
    public int delete(int id){
        return jdbcTemplate.update("DELETE FROM genres WHERE id=?",id);
    }
    public int deleteNotUsed(int id){
        if(jdbcTemplate.queryForObject("SELECT COUNT(*)FROM books WHERE genre_id=?",new Object[]{id}, Integer.class)==0){
            return delete(id);
        }
        return 0;
    }
    public boolean ifGenrePeresentinDatabase(Genre genre){
        if(jdbcTemplate.queryForObject("SELECT COUNT(*)FROM books WHERE genre_id=?",new Object[]{genre.getId()}, Integer.class)>0)
            return true;
        return false;
    }
    public int getGenreIdByName(String name,int age){
        try {
            int id=jdbcTemplate.queryForObject("SELECT id FROM genres WHERE name=? and age=?",new Object[]{name,age}, Integer.class);
            return id;
        }
        catch (Exception EmptyResultDataAccessException)
        {
            return -1;
        }
    }
}
