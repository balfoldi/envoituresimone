import React from 'react'
import Card from "react-bootstrap/Card"
const sanitized = require("sanitized");

const ArticlesCard = ({ article }) => {
  return (
    <Card className="mb-5">
      {article.image_url ? (
        <>
          <Card.Img variant="top" src={article.image_url} />
          <Card.Body>
            <Card.Title>{article?.title}</Card.Title>
          </Card.Body>
        </>
      ) : (
        <Card.Header><h3>{article?.title}</h3></Card.Header>
      )}
      <Card.Body>
        <div dangerouslySetInnerHTML={{ __html: sanitized(article?.content) }} />
      </Card.Body>
      <Card.Footer className="text-muted">{article.date}</Card.Footer>
    </Card>
  )
}

export default ArticlesCard
