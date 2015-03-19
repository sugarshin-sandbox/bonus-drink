_ = require 'lodash'

bought = 100
RATE = 3

console.log "bonus-drink3 => #{_.reduce _.range(bought), (sum, n) ->
  if n % RATE is 0
    n + Math.floor n / RATE
  else
    n
, bought}"
