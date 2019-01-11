import App1 from './app1'
import React, {PureComponent} from 'react'
import * as t from 'App/types'

class App extends PureComponent
  render: ->
    data = message: 'Hello world!'
    {message} = {...data}
    console.log t
    <h1>{message}</h1>

export default App
