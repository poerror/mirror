import React from 'react';
import Grid from 'material-ui/Grid';
import AppBar from 'material-ui/AppBar';
import Toolbar from 'material-ui/Toolbar';
import Typography from 'material-ui/Typography';
import Button from 'material-ui/Button';
import ProjectList from './ProjectList';
import TaskList from './TaskList';

const App = () =>
<Grid container>
  <Grid item xs={12}>
    <AppBar position="static" color="primary">
      <Toolbar>
        <Typography variant="title" color="inherit">
          miЯRor
        </Typography>
        <Button color="inherit">Dashboard</Button>
      </Toolbar>
    </AppBar>

    <Grid container className="content" justify="center">
      <Grid item xs={10}>
        <ProjectList />
      </Grid>
    </Grid>

    <Grid container className="content" justify="center">
      <Grid item xs={10}>
        <TaskList />
      </Grid>
    </Grid>
  </Grid>
</Grid>

export default App;
