const Navbar = () => {
  return (
    <div className="flex p-10 px-24 w-full items-center fixed z-10 bg-[#E1DBD6]/95 backdrop-blur-lg">
      <div>
        <h1 className="font-black text-3xl">
          COVER.
          <span className="text-[#E71827]">IO</span>
        </h1>
      </div>
      <nav className="flex w-full justify-end items-center font-bold">
        <ul className="flex w-72 justify-evenly mx-5">
          <li>HOME</li>
          <li>ABOUT</li>
          <li>BOOKS</li>
        </ul>
        <button className="bg-[#F2BF11] py-1 px-4 border-2 border-black drop-shadow-button_shadow">
          SIGN UP
        </button>
      </nav>
    </div>
  );
};
export default Navbar;
