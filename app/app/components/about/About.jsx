const About = () => {
  return (
    <div
      id="about"
      className="w-full px-10 pt-[300px] pb-[120px] flex justify-between items-center"
    >
      <div className="transform rotate-[-90deg] h-80">
        <h1 className="text-8xl font-black text-black/10">ABOUT</h1>
      </div>
      <div className="w-[620px] mx-16">
        <p className="text-4xl font-medium">
          <span className="font-bold text-8xl">W</span>elcome to our online book
          repository! We understand that finding the perfect book to read can be
          a daunting task, and that's why we've created a comprehensive
          collection of books to help make your search a little easier.
        </p>
      </div>
    </div>
  );
};

export default About;
