class Words

  word = /\w+/g

  constructor: (string) ->
    @count = string
      .toLowerCase()
      .match(word)
      .reduce (dict, word) ->
        dict[word] = 1 + (dict[word] or 0)
        dict
      , {}

module.exports = Words
