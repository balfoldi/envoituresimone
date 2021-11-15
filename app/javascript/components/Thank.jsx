import React from 'react'
const sanitized = require("sanitized");

const Thank = ({ thank }) => {
  return (
    <div className="w-100" dangerouslySetInnerHTML={{ __html: sanitized(thank?.content) }} />
  )
}

export default Thank
