import Image from "next/image";
import Link from "next/link";

const Book = (props) => {
  const book = props.book;

  return (
    <Link
      className="m-auto w-[320px] h-[520px] flex items-center justify-center"
      href={`/books/${book.id}`}
    >
      <div className="m-auto border-2 border-black shadow-card_shadow w-[320px] h-[520px] flex items-center justify-center">
        <div className="w-full h-full mx-4 p-8 flex flex-col items-center space-y-4 text-center hover:overflow-auto overflow-hidden no-scrollbar">
          <div>
            <Image
              className="border-2 border-black"
              src={book.cover}
              width={160}
              height={100}
              alt="book cover"
            ></Image>
          </div>
          <h1 className="w-full text-2xl font-black overflow-x-clip">
            {book.title}
          </h1>
          <h2 className="w-full text-lg overflow-x-clip">
            <span className="font-bold">Author: </span>
            {book.author.name} {book.author.surname}
          </h2>
          <h2 className="w-full text-lg overflow-x-clip">
            <span className="font-bold">Publish year: </span> {book.year}
          </h2>
        </div>
      </div>
    </Link>
  );
};

export default Book;
