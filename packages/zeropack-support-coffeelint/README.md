## zeropack-support-coffeelint

It allow to use [CoffeLint](http://www.coffeelint.org/)
as zeropack plugin

```
yarn add -D zeropack-support-coffeelint
```

minimal zeropack.config.coffee:
```
module.exports =
  plugins: [
    'zeropack-coffeelint-support'
  ]
```
use custom config:
```
path = require 'path'
module.exports =
  plugins: [
    'zeropack-coffeelint-support'
  ]
  'zeropack-coffeelint-support':
    configFile: path.join(__dirname, 'coffeelint.json')
```
