import { useState, useEffect } from "react";
import axios from "axios";

export const useBook = (id) => {
  const [book, setBook] = useState([]);

  const fetchBook = async () => {
    const response = await fetch(`http://localhost:8080/${id}`);
    const data = await response.json();

    if (response.ok) {
      setBook(data);
    }
  };

  useEffect(() => {
    fetchBook();
  }, []);

  return book;
};
