path = require 'path'

module.exports = ({webpackConfig, builderConfig}) ->
  pluginName = 'zeropack-support-coffeelint'
  pluginConfig = builderConfig[pluginName] || {}

  configFile = pluginConfig.configFile || path.resolve(__dirname, 'coffeelint.json')
  console.log "#{pluginName}: to use config '#{configFile}'"
  try
    require configFile
  catch e
    console.error "Can't open '#{configFile}', will be used predefined coffeelint rules"

  linter =
    loader: 'coffeelint-loader'
    options:
      configFile
  rule =
    id: 'coffeelint'
    test: /\.(coffee|cjsx)$/
    use: [linter]
    enforce: 'pre'

  webpackConfig.module.rules.push rule
