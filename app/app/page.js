import { Hero, Navbar, About, Search, Books } from "./components";

export default function Home() {
  return (
    <div className="w-full h-full">
      <Navbar />
      <Hero />
      <About />
      <Search />
      <Books />
    </div>
  );
}
