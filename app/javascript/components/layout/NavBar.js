import React from 'react'
import Navbar from 'react-bootstrap/Navbar'
import Container from 'react-bootstrap/Container'
import NavDropdown from 'react-bootstrap/NavDropdown'
import Nav from 'react-bootstrap/Nav'
import logo from '../../images/envoituresimone-logo.png'

const NavBar = ({ rallies, new_rally_path }) => {
  return (
    <div>
      <Navbar bg="warning" expand="lg">
        <Container>
          <a href="/">
            <img src={logo} alt="Logo" style={{ height: "70px" }} />
          </a>
          <Navbar.Brand href="/" className="ml-2">En Voiture Simone</Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              {<NavDropdown title="Rallyes">
                <NavDropdown.Item href={new_rally_path}>Nouveau rallye</NavDropdown.Item>
                {rallies.map(((rally, idx) => (
                  <NavDropdown.Item key={idx} href={`/rallies/${rally.id}`}>{rally.title}</NavDropdown.Item>
                )))}
              </NavDropdown>}
              {/* <NavDropdown title="Partenaires">
                <NavDropdown.Item href="partners">Nos partenaires</NavDropdown.Item>
                <NavDropdown.Item href="become_partners">Devenir partenaire</NavDropdown.Item>
              </NavDropdown> */}
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </div>
  )
}

export default NavBar
