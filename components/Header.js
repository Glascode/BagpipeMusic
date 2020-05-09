import Link from 'next/link'

function Header() {
  return (
    <header className="py-4 text-sm border-b border-gray-200">
      <nav className="container nav">
        <Link href="/">
          <a>Home</a>
        </Link>
        <Link href="/archive">
          <a>Archive</a>
        </Link>
      </nav>
    </header>
  )
}

export default Header
