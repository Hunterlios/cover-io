package polsl.pl.Books;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class AuthorController {
    @Autowired
    AuthorRepository authorRepository;

    @GetMapping("/authors")
    public List<Author> getAllAuthors(){
        return authorRepository.getAllAuthors();
    }

    @GetMapping("/authors/{id}")
    public Author getAuthorById(@PathVariable("id") int id){
        return authorRepository.getAuthorById(id);
    }
    @PostMapping("/authors")
    public int addAuthor(@RequestBody Author author){
        return authorRepository.save(author);
    }
    @DeleteMapping("/authors/{id}")
    public int deleteAuthor(@PathVariable("id") int id){
        return authorRepository.deleteNotUsed(id);
    }
}
