import React from 'react'
import axios from 'axios'
import { ArrowUpRight, ChevronDown } from 'react-feather'

function fetcher(url) {
  return fetch(url).then(response => response.json())
}

class Archive extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      categories: null,
      tunes: null,
      sortBy: 'title',
      error: null
    }
  }

  sortBy(sort) {
    if (this.state.sortBy !== sort) {
      this.setState({ sortBy: sort })
      this.fetchTunes(sort)
    }
  }

  fetchCategories() {
    axios.get('/api/categories').then(response => {
      this.setState({
        categories: response.data
      })
    }).catch(error => {
      this.setState({ error: error })
    })
  }

  fetchTunes(sort) {
    // Fetch tunes
    axios.get(`/api/tunes?sort=${sort}`).then(response => {
      this.setState({
        tunes: response.data
      })
    }).catch(error => {
      this.setState({ error: error })
    })
  }

  componentDidMount() {
    this.fetchCategories()
    this.fetchTunes('title')
  }

  renderTunesByTitle() {
    return (
      <>
        {this.state.tunes.map((tune, index) => {
          return (
            <tr key={index}>
              <td>
                <a target="_blank"
                   href={`/archive/${tune.path}`}>
                  {tune.title}
                </a>
              </td>
              <td>{this.state.categories.find(({ id }) => id === tune.category).title}</td>
            </tr>
          )
        })}
      </>
    )
  }

  render() {
    if (this.state.error) {
      return <div className="container pt-10 text-sm">
        <p className="mb-3">Sorry, an error occurred when loading the archive. Please try again later.</p>
        <p>
          If the problem persists, please <a href="mailto:mael.querre@gmail.com">contact me</a> or <a href="https://github.com/maelquerre/bagpipe-music/issues">file an issue</a> on the project's GitHub repository.
        </p>
      </div>
    }

    if (!this.state.tunes) {
      return <div className="container pt-10 text-sm">
        Loading scores...
      </div>
    }

    return (
      <div className="container pt-10 text-sm">
        <table className="table">
          <thead>
            <tr>
              <th>
                <button className="flex items-center uppercase"
                        onClick={() => this.sortBy('title')}>
                  Title
                  {this.state.sortBy === 'title' && <ChevronDown size={14} className="flex-shrink-0 ml-1" />}
                </button>
              </th>
              <th>
                <button className="flex items-center uppercase"
                        onClick={() => this.sortBy('category')}>
                  Category
                  {this.state.sortBy === 'category' && <ChevronDown size={14} className="flex-shrink-0 ml-1" />}
                </button>
              </th>
            </tr>
          </thead>

          <tbody>
            {this.renderTunesByTitle()}
          </tbody>
        </table>
      </div>
    )
  }
}


export default Archive
