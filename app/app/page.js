import { Hero, Navbar, About, Books } from "./components";

export default function Home() {
  return (
    <div className="w-screen h-full">
      <Navbar />
      <Hero />
      <About />
      <Books />
    </div>
  );
}
