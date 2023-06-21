import Image from "next/image";

const getBooks = async () => {
  const res = await fetch("http://localhost:8080/");
  if (!res.ok) {
    throw new Error("Something went wrong");
  }
  return res.json();
};

const Books = async () => {
  const books = await getBooks();
  return (
    <div className="px-10 pb-[320px]">
      <div className="grid grid-cols-3 gap-20">
        {books.map((book) => (
          <div
            className="m-auto border-2 border-black shadow-card_shadow w-[320px] h-[520px] flex items-center justify-center"
            key={book.id}
          >
            <div className="w-full h-full mx-4 p-8 flex flex-col items-center space-y-4 text-center hover:overflow-auto overflow-hidden no-scrollbar">
              <div>
                <Image
                  src={"/images/image_1.png"}
                  width={160}
                  height={100}
                  className=""
                ></Image>
              </div>
              <h1 className="w-full text-2xl font-black overflow-x-clip">
                {book.title}
              </h1>
              <h2 className="w-full text-lg overflow-x-clip">
                <span className="font-bold">Author: </span>
                {`${book.author.name} ${book.author.surname}`}
              </h2>
              <h2 className="w-full text-lg overflow-x-clip">
                <span className="font-bold">Publish year: </span> 2137
              </h2>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Books;
