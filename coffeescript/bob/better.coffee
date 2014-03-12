# submitted by thesunneversets (http://exercism.io/thesunneversets)

class Bob

  hey: (input) ->

    silence  = input.trim() is '' 
    shouting = input is input.toUpperCase()
    question = input.slice(-1) is '?'

    switch
      when silence  then "Fine. Be that way!"
      when shouting then "Woah, chill out!"
      when question then "Sure."
      else "Whatever."

module.exports = Bob
