total = (bought, rate) -> bought + Math.floor (bought - 1) / (rate - 1)

RATE = 3
bought = 100
console.log "bonus-drink2 => #{total bought, RATE}"
