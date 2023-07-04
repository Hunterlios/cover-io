"use client";

import { FiArrowLeft } from "react-icons/fi";
const SignUpPage = () => {
  const handleBack = () => {
    window.history.back();
  };
  return (
    <div className="w-full h-screen flex flex-col justify-center items-center space-y-10">
      <button
        onClick={handleBack}
        className="flex items-center bg-[#F2BF11] py-2 px-4 border-2 border-black drop-shadow-button_shadow"
      >
        <FiArrowLeft size={26} />
        <h1 className="w-[140px] font-bold">BACK TO HOME</h1>
      </button>

      <div className="flex flex-col items-center text-center space-y-6">
        <h1 className="text-3xl md:text-8xl font-bold">WORK IN PROGRESS ⚒️</h1>
        <p className="text-xl md:text-4xl">COMING SOON...</p>
      </div>
    </div>
  );
};

export default SignUpPage;
