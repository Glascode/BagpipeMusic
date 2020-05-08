import Link from 'next/link'
import Footer from '../components/Footer'
import Header from './Header'

class Layout extends React.Component {
  render() {
    const { children } = this.props
    return (
      <>
        <div className="flex-grow flex-shrink-0">
          <Header />

          <main className="h-full">
            {children}
          </main>
        </div>

        <Footer />
      </>
    )
  }
}

export default Layout
