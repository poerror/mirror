import React from 'react';
import Grid from 'material-ui/Grid';
import Project from './Project';

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

export default ProjectList;
