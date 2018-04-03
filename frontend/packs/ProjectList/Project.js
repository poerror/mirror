import React from 'react';
import Grid from 'material-ui/Grid';
import Paper from 'material-ui/Paper';
import { withStyles } from 'material-ui/styles';

const styles = {
  projectBox: {
    display: 'flex',
  },
  projectColor: {
    backgroundColor: '#fff',
    borderRight: '1px solid #eae6e6',
    width: '20px'
  },
  projectContent: {
    flexGrow: 1,
    padding: '10px'
  },
  projectTitle: {
    margin: '0 0 10px 0'
  }
}

const Project = ({name, description, gridSizeXs=6, gridSizeMd=4, classes, color}) =>
  <Grid item xs={gridSizeXs} md={gridSizeMd}>
    <Paper>
      <div className={classes.projectBox}>
        <div className={classes.projectColor} style={{backgroundColor: color}}>
        </div>
        <div className={classes.projectContent}>
          <h4 className={classes.projectTitle}>{name}</h4>
          <div>
            {description}
          </div>
        </div>
      </div>
    </Paper>
  </Grid>

export default withStyles(styles)(Project);
