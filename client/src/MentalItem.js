import React, { useState } from "react";


function MentalItem({ mentalItem, handleUpdateItem  }) {
  const [isShowingSummary, setIsShowingSummary] = useState(true);
  const {
    id,
    title,
    description,
    is_favorited: isFavorited,
  } = mentalItem;

  function handleClick(e) {
    e.preventDefault();

    fetch(`/mental_items/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ is_favorited: !isFavorited }),
    })
      .then((r) => r.json())
      .then((updatedItem) => handleUpdateItem(updatedItem));
  }
 
  return (
    <div>
      <div className="yoga-item">
        <h2>{title}</h2>
        <p className="yoga-card-description">{isShowingSummary?`${description.substring(0, 50)}`: description}</p>
      <button onClick={()=> setIsShowingSummary((prev)=>!prev)}>Read More...</button>
      </div>
    </div>
  );
}

export default MentalItem;
