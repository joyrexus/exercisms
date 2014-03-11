class Binary

  constructor: (@bin) ->
    @bin = '0' if @bin.match /[^01]/

  toDecimal: ->
    @bin.split('')
      .reverse()
      .reduce (total, digit, i) ->
        total += if +digit then Math.pow(2, i) else 0
      , 0

module.exports = Binary

