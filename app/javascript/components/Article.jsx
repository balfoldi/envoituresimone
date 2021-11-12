import React from 'react'
import Card from "react-bootstrap/Card"
const sanitized = require("sanitized");

const ArticlesCard = ({article, date}) => {
  return (
    <Card className="mb-5">
      <Card.Header><h3>{article?.title}</h3></Card.Header>
      <Card.Body>
        <div dangerouslySetInnerHTML={{__html: sanitized(article?.content)}}/>
      </Card.Body>
      <Card.Footer className="text-muted">{date}</Card.Footer>
    </Card>
  )
}

export default ArticlesCard
