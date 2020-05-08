import Link from 'next/link'
import Footer from '../components/Footer'

class Layout extends React.Component {
  render() {
    const { children } = this.props
    return (
      <>
        <div className="flex-grow flex-shrink-0">
          <header className="py-4 border border-b-gray-400">
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

          <main>
            {children}
          </main>
        </div>

        <Footer />
      </>
    )
  }
}

export default Layout
