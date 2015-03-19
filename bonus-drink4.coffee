class BonusDrink
  _divmod: (num, rate) ->
    return if typeof num isnt 'number' or typeof rate isnt 'number'
    [Math.floor num / rate, num % rate]
  constructor: (@rate) ->
  total: (bougth) ->
    total = drank = bougth
    while drank >= @rate
      total += Math.round drank / @rate
      drank = @_divmod(drank, @rate).reduce (p, c) -> p + c
    return total

RATE = 3
bought = 100
bd = new BonusDrink RATE
console.log "bonus-drink4 => #{bd.total bought}"
