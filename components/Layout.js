import Link from 'next/link'

class Layout extends React.Component {
  render() {
    const { children } = this.props
    return (
      <div className="flex-grow flex-shrink-0">
        <header className="header">
          <nav className="container py-1">
            <Link href="/"
                  className="nav-link">
              <a>Home</a>
            </Link>
            <Link href="/archive"
                  className="nav-link">
              <a>Archive</a>
            </Link>
            <a className="nav-link"
               href="https://github.com/glascode/bagpipe-music">Source</a>
          </nav>
        </header>

        <main>
          {children}
        </main>
      </div>
    )
  }
}

export default Layout
