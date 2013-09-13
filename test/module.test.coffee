Module = require('./module')

Log =
  info: (args...) ->
    console?.log?(args...)
    this

class User extends Module
    @include Log
    @extend Log

(new User).info("test...")
User.info("test ...")
