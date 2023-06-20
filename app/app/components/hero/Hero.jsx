import Image from "next/image";

const Hero = () => {
  return (
    <div className="flex p-10 px-24 justify-between pt-[300px] pb-[240px] items-center">
      <div className="w-[540px] space-y-8">
        <h1 className="text-7xl font-black leading-[5.25rem]">
          Don't judge a book by its
          <span className="text-[#E71827]"> cover</span>.
        </h1>
        <p className="font-medium text-3xl leading-tight">
          Discover the treasures within and let the story surprise you!
        </p>
      </div>
      <div className="flex items-center w-[720px] h-[400px] justify-between">
        <div className="flex h-full items-start">
          <Image
            className="drop-shadow-image_shadow"
            src="/images/image_1.png"
            width={220}
            height={100}
          ></Image>
        </div>

        <div className="flex h-full items-center">
          <Image
            className="drop-shadow-image_shadow"
            src="/images/image_2.png"
            width={220}
            height={100}
          ></Image>
        </div>
        <div className="flex h-full items-end">
          <Image
            className="drop-shadow-image_shadow"
            src="/images/image_3.png"
            width={220}
            height={100}
          ></Image>
        </div>
      </div>
    </div>
  );
};

export default Hero;
