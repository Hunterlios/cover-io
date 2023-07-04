import { useState, useEffect } from "react";
import axios from "axios";

export const useBooks = () => {
  const [books, setBooks] = useState([]);

  const fetchBooks = async () => {
    const response = await fetch("http://localhost:8080/");
    const data = await response.json();

    if (response.ok) {
      setBooks(data);
    }
  };

  useEffect(() => {
    fetchBooks();
  }, []);

  return books;
};
