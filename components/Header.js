import Link from 'next/link'

function Header() {
  return (
    <header className="py-4 text-sm border border-b-gray-400">
      <nav className="container nav">
        <Link href="/">
          <a>Home</a>
        </Link>
        <Link href="/archive">
          <a>Archive</a>
        </Link>
        <a href="https://github.com/glascode/bagpipe-music">Source</a>
      </nav>
    </header>
  )
}

export default Header
