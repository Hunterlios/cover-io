const getBooks = async () => {
  const res = await fetch("http://localhost:8080/test");
  if (!res.ok) {
    throw new Error("Something went wrong");
  }
  return res.json();
};

const Books = async () => {
  const books = await getBooks();
  return (
    <div className="text-4xl text-center">
      Books:
      <div>{books.author.name}</div>
    </div>
  );
};

export default Books;
