import Link from "next/link";

const Navbar = () => {
  return (
    <div className="flex p-10 px-24 w-full items-center fixed z-10 bg-[#E1DBD6] border-b-[3px] border-black">
      <div>
        <h1 className="font-black text-3xl">
          COVER.
          <span className="text-[#E71827]">IO</span>
        </h1>
      </div>
      <nav className="flex w-full justify-end items-center font-bold">
        <ul className="flex w-72 justify-evenly mx-5">
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
        <button className="bg-[#F2BF11] py-1 px-4 border-2 border-black drop-shadow-button_shadow">
          SIGN UP
        </button>
      </nav>
    </div>
  );
};
export default Navbar;
