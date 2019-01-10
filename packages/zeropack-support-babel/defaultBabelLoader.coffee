
babelPlugin = (plugin) ->
  require.resolve "@babel/#{plugin}"

babelPreset = (preset) ->
  require.resolve "@babel/#{preset}"

babel =
  loader: 'babel-loader'
  options:
    presets: [babelPreset('env'), babelPreset('react')]
    plugins: [babelPlugin('proposal-object-rest-spread'), babelPlugin('transform-runtime')]

module.exports = {babel}
