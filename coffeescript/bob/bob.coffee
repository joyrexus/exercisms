class Bob

  hey: (msg) -> 
    if not /\w/.test msg
      'Fine. Be that way!'
    else if not /[a-z]/.test msg
      'Woah, chill out!'
    else if /\?$/.test msg
      'Sure.'
    else
      'Whatever.'

module.exports = Bob
