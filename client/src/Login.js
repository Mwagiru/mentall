import { useState } from "react";
import LoginForm from "./LoginForm";
import SignUpForm from "./SignUpForm";


function Login({ onLogin }) {
  const [showLogin, setShowLogin] = useState(true);

  return (
    <div className="login-form">
        <h1>Mental Net</h1>
        <h2 className="tagline">
          It Is OK To Not Be OK!
          <br />
          It Is OK To Ask For Help!
          <br />
          You Are Not Alone!
        </h2>
        {showLogin ? (
          <>
            <LoginForm onLogin={onLogin} />
            <p className="accountquestion">Don't have an account?</p> &nbsp;
            <button onClick={() => setShowLogin(false)} className="login-btn">
              Sign Up
            </button>
          </>
        ) : (
          <>
            <SignUpForm onLogin={onLogin} />
            <p className="accountquestion">Already have an account?</p> &nbsp;
            <button onClick={() => setShowLogin(true)}>Log In</button>
          </>
        )}
    </div>
  );
}
export default Login;