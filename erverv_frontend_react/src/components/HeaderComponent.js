import React from 'react';
import { Link } from 'react-router-dom';
import Nav from 'react-bootstrap/Nav';
import Form from 'react-bootstrap/Form';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

const HeaderComponent = (props) => {
  return (
    <Container fluid className="bg-light">
      <Container>
        <Row>
          <Col>
            <Nav defaultActiveKey="/Brukere">
              <Nav.Item>
                <Nav.Link as={Link} to="/Brukere">Brukere</Nav.Link>
              </Nav.Item>
              <Nav.Item>
                <Nav.Link as={Link} to="/Aktivitetslogg">Aktivitetslogg</Nav.Link>
              </Nav.Item>
              <Nav.Item>
                <Nav.Link as={Link} to="/Om">Info</Nav.Link>
              </Nav.Item>
            </Nav>
          </Col>
          <Col className="d-flex justify-content-end align-items-center">
            <Form.Check
              type="switch"
              id="custom-switch"
              onChange={props.toggleDarkMode}
              checked={props.showDarkMode}
              label="Dark Mode"
            />
          </Col>
        </Row>
      </Container>
    </Container>
  );
}

export default HeaderComponent;


