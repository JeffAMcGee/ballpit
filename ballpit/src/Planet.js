import React  from 'react';
import { Row, Col } from 'react-bootstrap';

import planetData from './planetData';


const PlanetDetails = (props) => (
  <div>
    <h2>Planet</h2>
    <p>Name: {props.planet.pl_hostname}</p>
    <p>Discovery year: {props.planet.pl_disc}</p>
    <p>Discovery method: {props.planet.pl_discmethod}</p>
    <p>Orbital period: {props.planet.pl_orbper} Earth Days</p>
    <p>Star distance: {props.planet.st_dist} Parsecs</p>
    <p>Planets around star: {props.planet.st_pnum}</p>
  </div>
);

const PlanetDetails = (props) => {
  index = parseInt(props.id,36)
  planet = planetData.planets[index]
  return (
    <PlanetDetails planet={planet} />
  )
}
export default Planet;
