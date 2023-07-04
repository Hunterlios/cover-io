"use client";
import { useBooks } from "../../hooks/useBooks";
import { useEffect, useState } from "react";
import Book from "../book/Book";
import Search from "../search/Search";

const Books = () => {
  const books = useBooks();
  const [query, setQuery] = useState("");
  const [filteredBooks, setFilteredBooks] = useState([]);
  const GetQuery = (query) => {
    setQuery(query);
  };

  useEffect(() => {
    setFilteredBooks(
      books.filter(
        (book) =>
          book.title.toLowerCase().includes(query.toLowerCase()) ||
          book.author.name.toLowerCase().includes(query.toLowerCase()) ||
          book.author.surname.toLowerCase().includes(query.toLowerCase()) ||
          book.year.toString().includes(query)
      )
    );
  }, [query, books]);

  if (!books) {
    return <div>Loading...</div>;
  }

  return (
    <div className="w-[620px] sm:w-full px-10 pb-[320px]">
      <Search GetQueryValue={GetQuery} />
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-20">
        {filteredBooks.map((book) => (
          <Book key={book.id} book={book} />
        ))}
      </div>
    </div>
  );
};

export default Books;
