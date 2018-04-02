import React from 'react';
import Grid from 'material-ui/Grid';
import Task from './Task';

class TaskList extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      tasks: []
    }
  }

  componentDidMount() {
    fetch('/tasks/')
      .then(response => response.json())
      .then(data => this.setState({tasks: data}));
  }

  render() {
    const {tasks} = this.state;
    return (
      <Grid container>
        <Grid item xs={12}>
          <h3>Tasks</h3>
          <Grid container justify="center">
            {(tasks.length) ?
              tasks.map((task) =>
                  <Task key={task.id}
                          {...task} />
              ) : <p>No tasks...</p>}
          </Grid>
        </Grid>
      </Grid>
    )
  }
}

export default TaskList;
