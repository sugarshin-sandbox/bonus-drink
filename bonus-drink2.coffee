total = (bought, rate) -> if bought > 0 then bought + Math.floor (bought - 1) / (rate - 1) else 0

RATE = 3
bought = 100
console.log "bonus-drink2 => #{total bought, RATE}"
