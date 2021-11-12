import React from 'react'
import Navbar from 'react-bootstrap/Navbar'
import Container from 'react-bootstrap/Container'
import NavDropdown from 'react-bootstrap/NavDropdown'
import Nav from 'react-bootstrap/Nav'
import logo from '../../images/envoituresimone-logo.png'

const NavBar = () => {
  return (
    <div>
      <Navbar bg="warning" expand="lg">
        <Container>
          <a href="/">
            <img src={logo} alt="Logo" style={{height: "70px"}} />
          </a>
          <Navbar.Brand href="#home" className="ml-2">En Voiture Simone</Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <NavDropdown title="L'association">
                <NavDropdown.Item href="presentation">Présentation</NavDropdown.Item>
                <NavDropdown.Item href="team">L'équipe</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Partenaires">
                <NavDropdown.Item href="partners">Nos partenaires</NavDropdown.Item>
                <NavDropdown.Item href="become_partners">Devenir partenaire</NavDropdown.Item>
              </NavDropdown>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </div>
  )
}

export default NavBar
