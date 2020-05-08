import React from 'react'
import axios from 'axios'
import { ArrowDown, ArrowUpRight } from 'react-feather'

function fetcher(url) {
  return fetch(url).then(response => response.json())
}

class Archive extends React.Component {
  constructor(props) {
    super(props)

    this.state = {
      categories: null,
      sort: 'NAME',
      error: null
    }
  }

  getSortedScoresByName(scores) {
    return scores.sort((current, next) => {
      return current.title < next.title ? -1 : 1
    })
  }

  componentDidMount() {
    axios.get('/api/scores').then(response => {
      this.setState({
        categories: response.data
      })
    }).catch(error => {
      this.setState({ error: error })
    })
  }

  render() {
    if (this.state.error) {
      return <div className="container pt-10 text-sm">
        An error occurred when loading the archive.
      </div>
    }

    if (!this.state.categories) {
      return <div className="container pt-10 text-sm">
        Loading...
      </div>
    }

    return (
      <div className="container pt-10 text-sm">
        <div className="flex justify-between mb-5 last:mb-0 uppercase text-xs text-gray-700">
          <div>Archive</div>
          <div className="flex items-center">
            Categories <ArrowDown size={16} className="ml-2" />
          </div>
        </div>

        {this.state.categories.map((category, index) => {
          return (
            <div key={index} className="mb-8">
              <h3 className="mb-4 text-xl font-semibold">{category.title}</h3>

              <ul className="archive-list list-group">
                {this.getSortedScoresByName(category.items).map((score, index) => {
                  return (
                    <li key={index} className="mb-2 last:mb-0">
                      <a target="_blank"
                         href={`/archive/${score.path}`}
                         className="inline-flex items-center">
                        <ArrowUpRight size={16} className="mr-2" /> {score.title}
                      </a>
                    </li>
                  )
                })}
              </ul>
            </div>
          )
        })}
      </div>
    )
  }
}


export default Archive
