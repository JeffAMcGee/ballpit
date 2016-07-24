import React, { Component } from 'react';
import { Grid, Row, Col } from 'react-bootstrap';

import ExoNavbar from './ExoNavbar';

class App extends Component {
  render() {
    return (
      <div className="App">
        <ExoNavbar />
        <Grid fluid={true}>
          <Row>
            <Col>
              <h2>Hello worlds!</h2>
            </Col>
          </Row>
        </Grid>
      </div>
    );
  }
}

export default App;
