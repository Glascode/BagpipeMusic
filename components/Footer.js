function Footer() {
  return (
    <footer className="flex-shrink-0 mt-8 py-10 text-sm text-gray-600 bg-gray-100 border-t border-gray-200">
      <div className="container flex items-center justify-center">
        <a href="https://github.com/maelquerre">Maël Querré</a>, {new Date().getFullYear()}
        <span className="mx-2 text-gray-200">|</span>
        <a href="https://github.com/glascode/bagpipe-music">Source</a>
      </div>
    </footer>
  )
}

export default Footer
