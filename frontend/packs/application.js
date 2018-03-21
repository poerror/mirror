import React from 'react'
import ReactDOM from 'react-dom'
import Grid from 'material-ui/Grid'
import Paper from 'material-ui/Paper'

const App = () =>
  <Grid container justify="center">
    <Grid item xs={10}>
      <ProjectList />
    </Grid>
  </Grid>

const Project = ({name, description, gridSize=4}) =>
  <Grid item xs={gridSize}>
    <Paper>
      <h4>{name}</h4>
      <div>
        {description}
      </div>
    </Paper>
  </Grid>

class ProjectList extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      projects: []
    }
  }

  componentDidMount() {
    fetch('/projects/')
      .then(response => response.json())
      .then(data => this.setState({projects: data}));
  }

  render() {
    const {projects} = this.state
    return (
      <Grid container>
        <Grid item xs={12}>
          <h3>Projects</h3>
          <Grid container justify="center">
            {(projects.length) ?
              projects.map((project) =>
                  <Project key={project.id}
                          {...project} />
              ) : <p>No projects...</p>}
          </Grid>
        </Grid>
      </Grid>
    )
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
