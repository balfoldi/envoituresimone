import React from 'react'
import Card from "react-bootstrap/Card"
const sanitized = require("sanitized");



const Partner = ({ partner }) => {
  return (
    <Card className="mb-3" >
      {partner.logo_url && <Card.Img valiant="top" src={partner.logo_url} />}
      <Card.Body>
        <Card.Title>
          {partner.url ?
            <a href={partner.url} target="_blank">
              {partner.name}
            </a>
            :
            partner.name}
        </Card.Title>
        <div dangerouslySetInnerHTML={{ __html: sanitized(partner?.description) }} />
      </Card.Body>
    </Card>
  )
}

export default Partner
