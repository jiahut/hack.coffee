module.exports = do ->
    classToType = {}
    for name in "Boolean Number String Function Array Date RegExp undefined null ".split(" ")
        classToType["[object " + name + "]"] = name.toLowerCase()

    (obj) ->
        strType = Object::toString.call(obj)
        classToType[strType] or 'object'
