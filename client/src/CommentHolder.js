import React, { useState } from "react";
import EditComment from "./EditComment";
import { Link } from "react-router-dom";

function CommentHolder({
  id,
  comment,
  handleDeleteComment,
  handleUpdateComment,
  handleShowComment,
}) {
  const [isEditing, setIsEditing] = useState(false);
  const { description, user } = comment;

  function handleDelete() {
    fetch(`/comments/${id}`, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
    });
    handleDeleteComment(id);
  }
  return (
    <div className="bubble">
      {isEditing ? (
        <EditComment
          id={id}
          comment={comment}
          setIsEditing={setIsEditing}
          handleUpdateComment={handleUpdateComment}
        />
      ) : (
        <div className="comment-container">
          <button className="delete-button" onClick={handleDelete}>
            X
          </button>
          <button
            className="edit-btn"
            onClick={() => setIsEditing((isEditing) => !isEditing)}
          >
            <span role="img" aria-label="edit">
              ✏️
            </span>
          </button>
          <br />
          <h3 className="comment">
            {description}
            <Link className="full-comment-button" to={`/comments/${id}`}>
              View
            </Link>
          </h3>
        </div>
      )}
    </div>
  );
}

export default CommentHolder;
