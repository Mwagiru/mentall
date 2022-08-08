import React from "react";
import { Link } from "react-router-dom";
function Navbar({ onLogout }) {
  function handleLogout() {
    fetch("/logout", {
      method: "DELETE",
    }).then(() => onLogout());
  }

  return (
    <>
      <div className="header-background">
        <button onClick={handleLogout} className="logout-button">
          Logout
        </button>
      </div>
      <Link exact={+true} to="/list" className="nav-button">
        Home
      </Link>
      <Link exact={+true} to="/comments" className="nav-button">
        Comments
      </Link>
    </>
  );
}

export default Navbar;
