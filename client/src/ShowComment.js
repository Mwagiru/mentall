import React from "react";
import { useParams } from "react-router-dom";
import { useState, useEffect } from "react";

function ShowComment() {
  const [currentComment, setCurrentComment] = useState("");
  const { id } = useParams();

  useEffect(() => {
    fetch(`/comments/${id}`)
      .then((r) => r.json())
      .then((currentComment) => {
        setCurrentComment(currentComment);
      });
  }, [id]);
  console.log(currentComment);
  return <div className="show-comment">{currentComment.description}</div>;
}

export default ShowComment;
