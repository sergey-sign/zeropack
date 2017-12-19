path = require 'path'

module.exports = ({webpackConfig, builderConfig}) ->
  pluginName = 'zeropack-support-coffeelint'
  pluginConfig = builderConfig[pluginName] || {}

  if pluginConfig.enableByEnv
    unless process.env.COFFEELINT_ENABLE
      console.log "#{pluginName}: Disabled by 'enableByEnv' option."
      console.log "#{pluginName}: To run linter - set COFFEELINT_ENABLE variable"
      return

  configFile = pluginConfig.configFile || path.resolve(__dirname, 'coffeelint.json')
  console.log "#{pluginName}: config '#{configFile}'"
  try
    require configFile
  catch e
    console.error "#{pluginName}: Can't open '#{configFile}', will be used predefined coffeelint rules"

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
