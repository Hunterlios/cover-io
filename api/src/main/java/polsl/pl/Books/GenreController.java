package polsl.pl.Books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class GenreController {
    @Autowired
    GenreRepository genreRepository;

    @GetMapping("/genres")
    public List<Genre> getAllAuthors(){
        return genreRepository.getAllGenres();
    }

    @GetMapping("/genres/{id}")
    public Genre getGenreById(@PathVariable("id") int id){return genreRepository.getGenreById(id);}
    @PostMapping("/genres")
    public int addGenre(@RequestBody Genre genre){return genreRepository.save(genre);}
    @DeleteMapping("/genres/{id}")
    public int deleteGenre(@PathVariable("id") int id){
        return genreRepository.deleteNotUsed(id);
    }
}
