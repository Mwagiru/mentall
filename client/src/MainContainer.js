import React, { useState } from "react";
import MentalList from "./MentalList";
import {  Route, Routes } from "react-router-dom";
import CommentList from "./CommentList";
import ShowComment from "./ShowComment";

function MainContainer({ mentalData, handleUpdateItem, user }) {
  const [clicked, setClicked] = useState(false);
  console.log(mentalData);
  return (
       <div>
      <Routes>
        <Route exact path="/comments" element={<CommentList user={user} />} />
        <Route exact path="/comments/:id" element={<ShowComment />} />
        <Route
          exact
          path="/list"
          element={
            <MentalList
              mentalData={mentalData}
              clicked={clicked}
              setClicked={setClicked}
            />
          }
        />
      </Routes>
    </div>
  );
}
export default MainContainer;
