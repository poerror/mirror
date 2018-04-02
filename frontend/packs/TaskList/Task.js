import React from 'react';
import Grid from 'material-ui/Grid';
import Paper from 'material-ui/Paper';

const Task = ({name, description}) =>
  <Grid item xs={4}>
    <Paper>
      <h4>{name}</h4>
      <div>
        {description}
      </div>
    </Paper>
  </Grid>

export default Task;
