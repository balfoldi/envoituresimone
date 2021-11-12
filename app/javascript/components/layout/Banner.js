import React from 'react'
import "../../stylesheets/banner"

function Banner() {
  return (
    <div className="fat-hero-image d-flex flex-column justify-content-between  py-2 mb-3 px-2" >
      <div className="d-flex justify-content-around">
        <h1>En Voiture Simone !</h1>
      </div>
      <i className="text-light d-flex justify-content-end mr-3">Illustration par Marie   </i>
    </div>
  )
}

export default Banner
