package polsl.pl.Books;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int id;
    private String title;
    private int pages;
    private String isbn;
    private double time;
    private String language;
    private String description;
    private String cover;
    private int year;
    private Author author;
    private Genre genre;
}
