"use client";
import { useBook } from "@/app/hooks/useBook";
import Image from "next/image";
import { FiArrowLeft } from "react-icons/fi";

const BookPage = ({ params }) => {
  const id = params.id;
  const book = useBook(id);
  const handleBack = () => {
    window.history.back();
  };

  if (!book.author) {
    return <div>Loading...</div>;
  }

  return (
    <div className="flex flex-col w-full h-full">
      <div className="flex py-16 px-6 sm:px-20 md:p-10 md:px-24 w-full items-center z-10 bg-[#E1DBD6] border-b-[3px] border-black">
        <button
          onClick={handleBack}
          className="flex items-center bg-[#F2BF11] py-1 px-3 md:py-2 md:px-4 border-2 border-black drop-shadow-button_shadow"
        >
          <FiArrowLeft size={26} />
          <h1 className="w-full md:w-[140px] font-bold text-xs md:text-base">
            MORE BOOKS
          </h1>
        </button>
        <nav className="flex w-full justify-end items-center font-bold">
          <h1 className="font-black text-xl md:text-3xl">
            COVER.
            <span className="text-[#E71827]">IO</span>
          </h1>
        </nav>
      </div>
      <div className="h-full w-full p-10 px-10 md:px-24 py-[100px] space-x-7 md:flex md:items-center md:justify-between">
        <div className="w-full space-y-2 text-center md:text-left">
          <h1 className="w-full text-4xl md:text-6xl font-black pb-6">
            {book.title}
          </h1>
          <h2 className="w-full text-lg ">
            <span className="font-bold">Author: </span>
            {book.author.name} {book.author.surname}
          </h2>
          <h2 className="w-full text-lg ">
            <span className="font-bold">Publish year: </span> {book.year}
          </h2>
          <p className="w-full text-lg ">
            <span className="font-bold">Description: </span> {book.description}
          </p>
          <p className="w-full text-lg ">
            <span className="font-bold">Language: </span> {book.language}
          </p>
          <p className="w-full text-lg ">
            <span className="font-bold">Pages: </span> {book.pages}
          </p>
        </div>
        <div className="w-[600px] flex justify-center items-center ">
          <Image
            className="border-2 border-black drop-shadow-image_shadow hidden md:block"
            src={book.cover}
            width={300}
            height={300}
          ></Image>
        </div>
      </div>
    </div>
  );
};

export default BookPage;
