import React from 'react'
import Card from "react-bootstrap/Card"
const sanitized = require("sanitized");

const ArticlesCard = ({rally}) => {
  return (
    <>
      <h3>{rally?.title}</h3>
      <div dangerouslySetInnerHTML={{__html: sanitized(rally?.presentation)}}/>
      <hr />
    </>
  )
}

export default ArticlesCard
