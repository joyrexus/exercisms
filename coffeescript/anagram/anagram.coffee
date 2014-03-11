class Anagram

  constructor: (@letters) ->
    @letters = letters.toLowerCase()
    @sorted = sort @letters

  match: (words) ->
    words
      .map((word) -> word.toLowerCase())
      .filter (word) => 
        word.length is @letters.length    and \
        word != @letters                  and \
        sort(word) is @sorted

  sort = (x) -> x.split('').sort().join()


module.exports = Anagram
