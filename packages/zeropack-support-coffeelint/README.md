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

### coffeelint is very, how to disable it?
option enableByEnv turns off coffeelint:
```
path = require 'path'
module.exports =
  plugins: [
    'zeropack-coffeelint-support'
  ]
  'zeropack-coffeelint-support':
    enableByEnv: true
```
```
→ yarn run serve
yarn run v1.3.2
$ zeropack serve
zeropack-support-coffeelint: Disabled by 'enableByEnv' option.
To run linter - set COFFEELINT_ENABLE variable
```
```
→ COFFEELINT_ENABLE=true yarn run serve
yarn run v1.3.2
$ zeropack serve
zeropack-support-coffeelint: config '/Users/sign/projects/zeropack/packages/zeropack-support-coffeelint/coffeelint.json'
```
