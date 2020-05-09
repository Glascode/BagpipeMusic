import tunes from '../../../data/tunes.json'

export default (request, response) => {
  const { query } = request
  let sortedTunes = tunes

  if (query.sort) {
    sortedTunes = [...tunes].sort((current, next) => {
      return current[query.sort] < next[query.sort] ? -1 : 1
    })
  }

  response.statusCode = 200
  response.setHeader('Content-Type', 'application/json')
  response.end(JSON.stringify(sortedTunes))
}
