import React from "react";


function MentalItem({ mentalitem, handleUpdateItem  }) {
  const {
    id,
    title,
    description,
    is_favorited: isFavorited,
  } = mentalitem;

  function handleClick(e) {
    e.preventDefault();

    fetch(`http://localhost:4000/mental_items/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ is_favorited: !isFavorited }),
    })
      .then((r) => r.json())
      .then((updatedItem) => handleUpdateItem(updatedItem));
  }

 
  const summary = description.substring(0, 50);
  return (
    <div>
      <div className="yoga-item">
        <h2>{title}</h2>
        <p className="yoga-card-description">{summary}...</p>
      </div>
    </div>
  );
}

export default MentalItem;
