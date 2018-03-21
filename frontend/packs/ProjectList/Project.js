import React from 'react';
import Grid from 'material-ui/Grid';
import Paper from 'material-ui/Paper';

const Project = ({name, description, gridSize=4}) =>
  <Grid item xs={gridSize}>
    <Paper>
      <h4>{name}</h4>
      <div>
        {description}
      </div>
    </Paper>
  </Grid>

export default Project;
