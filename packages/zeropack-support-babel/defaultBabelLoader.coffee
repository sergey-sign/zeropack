
babelPlugin = (plugin, options) ->
  p = require.resolve "@babel/plugin-#{plugin}"
  if options then [p, options] else p

babelPreset = (preset, options) ->
  p = require.resolve "@babel/preset-#{preset}"
  if options then [p, options] else p

babel =
  loader: 'babel-loader'
  options:
    presets: [
      babelPreset('env', modules: false),
      babelPreset('react')
    ]
    plugins: [
      babelPlugin('transform-modules-commonjs'),
      babelPlugin('proposal-object-rest-spread'),
      babelPlugin('transform-runtime')
    ]

module.exports = {babel}
