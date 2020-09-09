let moment = require('moment')

let formatDateTime = datetime => {
  /*
    Safari wants strict iso8601 format "YYYY-MM-DDTHH:MM:SSZ",
    but elixir to_string default supplies as "YYYY-MM-DD HH:MM:SSZ".
    So this attempts to transform the dates if needed
  */
  datetime = datetime
    .trim()
    .split(' ')
    .join('T')

  if (datetime === 'never' || datetime === '') {
    return datetime
  } else {
    const date = new Date(datetime)
    return moment(date).format('MMM Do, YYYY [at] h:mma')
  }
}

module.exports = { formatDateTime }
