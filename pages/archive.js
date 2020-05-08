import useSWR from 'swr'
import { ArrowDown, ArrowUpRight } from 'react-feather'

function fetcher(url) {
  return fetch(url).then(response => response.json())
}

function Archive() {
  const { data: categories, error } = useSWR('/api/scores', fetcher)

  if (error) {
    return <div className="container-sm pt-10 text-sm">
      An error occurred when loading the archive.
    </div>
  }

  if (!categories) {
    return <div className="container-sm pt-10 text-sm">
      Loading...
    </div>
  }

  return (
    <div className="container-sm pt-10 text-sm">
      <div className="flex justify-between mb-5 last:mb-0 uppercase text-xs text-gray-700">
        <div>Archive</div>
        <div className="flex items-center">
          Categories <ArrowDown size={16} className="ml-2" />
        </div>
      </div>

      {categories.map(category => {
        return (
          <div className="mb-5">
            <h3 className="mb-3">{category.title}</h3>

            <ul className="archive-list list-group">
              {category.items.map(score => {
                return (
                  <li className="mb-2 last:mb-0">
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


export default Archive
