import Image from "next/image";

const Hero = () => {
  return (
    <div
      id="home"
      className="m-auto space-y-20 flex flex-col md:flex-row md:space-y-0 px-20 py-16 md:py-0 md:p-10 md:px-24 lg:w-full lg:space-x-11 xl:space-x-0 md:justify-around lg:justify-between pt-[300px] pb-[300px] md:pt-[300px] md:pb-[240px]"
    >
      <div className="w-[520px] space-y-8">
        <h1 className="text-7xl font-black leading-[5.25rem]">
          Don't judge a book by its
          <span className="text-[#E71827]"> cover</span>.
        </h1>
        <p className="font-medium text-3xl leading-tight">
          Discover the treasures within and let the story surprise you!
        </p>
      </div>
      <div className="flex md:flex-col lg:flex-row items-center space-x-8 w-[480px] h-[400px] md:space-y-6 md:w-[720px] md:h-[500px] lg:space-x-5 justify-between">
        <div className="flex h-full items-start">
          <Image
            className="drop-shadow-image_shadow"
            src="https://s.lubimyczytac.pl/upload/books/5073000/5073468/1078234-352x500.jpg"
            width={220}
            height={100}
          ></Image>
        </div>

        <div className="flex h-full items-center">
          <Image
            className="drop-shadow-image_shadow"
            src="https://s.lubimyczytac.pl/upload/books/5070000/5070925/1073908-352x500.jpg"
            width={220}
            height={100}
          ></Image>
        </div>
        <div className="flex h-full items-end">
          <Image
            className="drop-shadow-image_shadow"
            src="https://s.lubimyczytac.pl/upload/books/5069000/5069041/1070964-352x500.jpg"
            width={220}
            height={100}
          ></Image>
        </div>
      </div>
    </div>
  );
};

export default Hero;
