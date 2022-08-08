import React, { useState } from "react";

function EditComment({ id, comment, setIsEditing, handleUpdateComment }) {
  const { description } = comment;
  const [updatedDescription, setUpdateDescription] = useState(description);

  function handleDescriptionChange(e) {
    setUpdateDescription(e.target.value);
  }
  function handleSubmit(e) {
    e.preventDefault();

    fetch(`/comments/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        description: updatedDescription,
      }),
    })
      .then((r) => r.json())
      .then((updatedDescription) => handleUpdateComment(updatedDescription))
      .then(() => setIsEditing(false));
  }
  return (
    <div>
      <form className="edit-comment">
        <label className="form-label" htmlFor="edit-comment">
          Edit Comment
        </label>
        <br />
        <input
          name="edit-comment"
          type="text"
          placeholder={description}
          value={updatedDescription}
          onChange={handleDescriptionChange}
        />
        <button className="save-button" type="submit" value="save" onClick={handleSubmit}>
          Save
        </button>
      </form>
    </div>
  );
}

export default EditComment;
