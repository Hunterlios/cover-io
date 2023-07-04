import Link from "next/link";

const Navbar = () => {
  return (
    <div className="flex py-16 px-20 md:p-10 md:px-24 w-full items-center fixed z-10 bg-[#E1DBD6] border-b-[3px] border-black">
      <div>
        <h1 className="font-black md:text-3xl text-4xl">
          COVER.
          <span className="text-[#E71827]">IO</span>
        </h1>
      </div>
      <nav className="flex w-full justify-end items-center font-bold">
        <ul className="md:flex w-72 justify-evenly mx-5 sm: hidden">
          <li>
            <Link href="#home" scroll={false}>
              HOME
            </Link>
          </li>
          <li>
            <Link href="#about" scroll={false}>
              ABOUT
            </Link>
          </li>
          <li>
            <Link href="#books" scroll={false}>
              BOOKS
            </Link>
          </li>
        </ul>
        <Link href={`/signUp/`}>
          <button className="w-[140px] h-[40px] text-xl md:text-base  md:w-full bg-[#F2BF11] py-1 px-4 border-2 border-black drop-shadow-button_shadow sm: visible">
            SIGN UP
          </button>
        </Link>
      </nav>
    </div>
  );
};
export default Navbar;
