import React from "react";
import Navbar from "./Navbar";

function Header({ user, setUser, onLogout }) {
  return (
    <div className="header-background">
      <h1 className="Calmer">MENTAL NET</h1>
      <Navbar user={user} setUser={setUser} onLogout={onLogout} />
    </div>
  );
}

export default Header;
