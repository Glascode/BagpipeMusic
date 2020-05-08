import useSWR from 'swr'

function Archive() {
  const { data: categories, error } = useSWR('/api/user', fetch)

  if (error) return <div>failed to load</div>
  if (!categories) return <div>loading...</div>

  return (
    <>
      <div className="flex justify-between mb-5 text-uppercase text-sm">
        <div className="col">Archive</div>
        <div className="col text-right">Categories
          <i className="material-icons-round icon-inline">arrow_downward</i>
        </div>
      </div>

      {categories.map(category => {
        return (
          <>
            <h3 className="mb-3">{category.title}</h3>

            <ul className="archive-list list-group mb-5">
              {category.items.map(score => {
                return (
                  <li className="list-group-item">
                    <a target="_blank"
                       href={`/archive/${score.path}`}
                       className="d-flex align-items-center justify-content-between">
                      {score.title}
                      <i className="material-icons-round rotate-45">arrow_upward</i>
                    </a>
                  </li>)
              })}
            </ul>
          </>
        )
      })}
    </>
  )
}


export default Archive
