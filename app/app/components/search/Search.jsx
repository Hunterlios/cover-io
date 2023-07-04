"use client";
import { useEffect, useState } from "react";

const Search = (props) => {
  const [query, setQuery] = useState("");
  useEffect(() => {
    props.GetQueryValue(query);
  });

  return (
    <div
      id="books"
      className="flex flex-col w-fit md:w-full px-10 py-[320px] items-center space-y-10"
    >
      <div className="space-y-6">
        <h1 className="text-4xl font-black text-center">
          Find your next page-turner with our
          <span className="text-[#11BCF2]"> book search</span>!
        </h1>
        <p className="text-3xl text-center lg:w-[1200px] font-medium">
          Simply type in keywords or the title of the book you're looking for,
          and let our search engine do the rest. Your perfect read is just a few
          clicks away!
        </p>
      </div>

      <div className="w-[400px] lg:w-[680px] lg:h-[64px] flex border-2 border-black bg-[#11BCF2] drop-shadow-button_shadow">
        <input
          type="text"
          className="w-full h-full outline-none bg-[#11BCF2] p-4 font-medium text-center placeholder:text-black/30"
          placeholder="Search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
        />
      </div>
    </div>
  );
};

export default Search;
