class BonusDrink
  constructor: (@rate) ->
  total: (bougth) -> @_get bougth
  _get: (count, result = count) ->
    bottle = count % @rate
    n = Math.floor count / @rate
    result += n
    bottle += n
    n = 0
    result = @_get bottle, result if bottle >= @rate
    return result

RATE = 3
bought = 100
bd = new BonusDrink RATE
console.log "bonus-drink1 => #{bd.total bought}"
