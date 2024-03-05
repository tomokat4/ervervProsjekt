import React from 'react'
import Nav from 'react-bootstrap/Nav'
import Form from "react-bootstrap/Form"

const HeaderComponent = (props) => {

  return (
    <Nav variant="tabs" defaultActiveKey="/home">
      <Nav.Item>
        <Nav.Link href="/home">Brukere</Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link eventKey="link-1">Aktivitetslogg</Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link eventKey="link-2">Info</Nav.Link>
      </Nav.Item>
	  <Nav.Item>
	        <Form.Check // prettier-ignore
        type="switch"
        id="custom-switch"
	  onChange={(e) => props.toggleDarkMode(e)}
        label="Dark Mode"
      />
	  </Nav.Item>
    </Nav>
  );
}


export default HeaderComponent
