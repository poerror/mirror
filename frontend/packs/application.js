import "./application.css";

import React from 'react'
import ReactDOM from 'react-dom'
import Button from 'material-ui/Button';

const Hello = props => (
  <div>
    Hello {props.name}!
    <Button raised color="primary">
      Check
    </Button>
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})
