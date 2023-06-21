/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      boxShadow: {
        card_shadow: "4px 4px rgba(0, 0, 0, 1)",
      },
      dropShadow: {
        button_shadow: "4px 4px rgba(0, 0, 0, 1)",
        image_shadow: "10px 10px rgba(0, 0, 0, 1)",
      },
    },
  },
  plugins: [],
};
