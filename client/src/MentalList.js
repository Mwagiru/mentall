import React, { useState } from "react";
import MentalItem from "./MentalItem";

function MentalList({
  mentalData,
  clicked,
  setClicked,
  handleUpdateItem,
}) {
  const [dataIndex, setDataIndex] = useState(0);
  const mentalItems = [...mentalData]
    .slice(dataIndex, dataIndex + 3)

    .map((mentalItem) => (
      <MentalItem
        key={mentalItem.id}
        mentalItem={mentalItem}
        handleUpdateItem={handleUpdateItem}
        clicked={clicked}
        setClicked={setClicked}
      />
    ));
  function handleClickMore() {
    setDataIndex((dataIndex) => (dataIndex + 3) % mentalData.length);
  }
  function handleClickLess() {
    setDataIndex((dataIndex) => (dataIndex - 3) % mentalData.length);
  }

  return (
    <>
      <div className="comment-page-title">
        <p>Your Mental Health is Important.</p>
      </div>
      <div className="yoga-list">
        <div className="yoga-container">{mentalItems}</div>
        <div className="float-container">
          <div className="next-container">
            <button
              onClick={handleClickLess}
              className="gg-chevron-left"
            ></button>
          </div>
          <div className="next-container">
            <button
              onClick={handleClickMore}
              className="gg-chevron-right"
            ></button>
          </div>
        </div>
      </div>
    </>
  );
}

export default MentalList;
