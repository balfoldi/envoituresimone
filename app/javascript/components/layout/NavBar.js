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
          {/* <Navbar.Brand href="#home">En Voiture Simone</Navbar.Brand> */}
          <a href="/">
            <img src={logo} alt="Logo" style={{height: "70px"}} />
          </a>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              {/* <Nav.Link href="#home">Home</Nav.Link> */}
              <NavDropdown title="L'association">
                <NavDropdown.Item href="">Bienvenue</NavDropdown.Item>
                <NavDropdown.Item href="">Le projet</NavDropdown.Item>
                <NavDropdown.Item href="">Les actions solidaires</NavDropdown.Item>
                <NavDropdown.Item href="">Le Trophée Roses des Sables 2021</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Nous y sommes arrivées ">
                <NavDropdown.Item href="">Histoire de nos pépins techniques</NavDropdown.Item>
                <NavDropdown.Item href="">Notre classement</NavDropdown.Item>
                <NavDropdown.Item href="">les temps forts</NavDropdown.Item>
                <NavDropdown.Item href="">Photos de notre rallye</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Avec Elles">
                <NavDropdown.Item href="">Mère et Fille</NavDropdown.Item>
                <NavDropdown.Item href="">Une histoire de Femmes</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Avec Vous">
                <NavDropdown.Item href="">Familles, Amis et Proches</NavDropdown.Item>
                <NavDropdown.Item href="">Les Entreprises partenaires</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Les Nouvelles du Mois">
                <NavDropdown.Item href="">mai/juin 2021</NavDropdown.Item>
                <NavDropdown.Item href="">Nombre de KM acquis</NavDropdown.Item>
              </NavDropdown>
              <NavDropdown title="Les Créations de Cat & Co">
                <NavDropdown.Item href="">Modalités de commande</NavDropdown.Item>
                <NavDropdown.Item href="">Les Cartes de Cat</NavDropdown.Item>
              </NavDropdown>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </div>
  )
}

export default NavBar
