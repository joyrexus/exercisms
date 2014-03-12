class Words

  word = /\w+/g

  parse = (string) -> string.toLowerCase().match(word)

  constructor: (string) ->
    words = parse string
    @count = words.reduce (freq, word) ->
      freq[word] ?= 0
      freq[word] += 1
      freq
    , {}


module.exports = Words
