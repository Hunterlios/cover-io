package polsl.pl.Books;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class BookController {

    @Autowired
    BookRepository bookRepository;


    @GetMapping("/")
    public List<Book> getAll(){
        return bookRepository.getAll();
    }


    @GetMapping("/{id}")
    public Book getById(@PathVariable("id") int id){
        Book book=  bookRepository.getBookById(id);
        if(book==null){ throw new BookNotFoundException("id: "+id);}
        return book;
    }

    @GetMapping("/test")
    public Book test(){
        Author author=new Author(999,"Marek","Towarek","Nibylandia");
        Genre genre = new Genre(666,"Boomer",99);
        return new Book(69,"Wydział MS",2137,"XD-xd",44,"Kurdyjski",
                "nie wiem, nie czytałam","C:users/Natalia/Cyrk/Zdjecie.jpg",1999,author,genre);
    }



    @PostMapping("/")
    public int add(@RequestBody Book book){
        return bookRepository.save(book);
    }
    @PutMapping("/{id}")
    public int update(@PathVariable("id") int id, @RequestBody Book updatedBook){
        Book book = bookRepository.getBookById(id);
        if (book !=null){
            book.setTitle(updatedBook.getTitle());
            book.setPages(updatedBook.getPages());
            book.setIsbn(updatedBook.getIsbn());
            book.setTime(updatedBook.getTime());
            book.setLanguage(updatedBook.getLanguage());
            book.setDescription(updatedBook.getDescription());
            book.setCover(updatedBook.getCover());
            book.setYear(updatedBook.getYear());
            book.setAuthor(updatedBook.getAuthor());
            book.setGenre(updatedBook.getGenre());
            bookRepository.update(book);


            return 1;
        }else{
            return -1;
        }
    }
    @DeleteMapping("/{id}")
    public int delete(@PathVariable("id") int id){
        return bookRepository.delete(id);
    }
}
