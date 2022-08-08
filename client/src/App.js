import React, { useState, useEffect } from "react";
import "./App.css";
import { Route, Routes} from "react-router-dom";
import Header from "./Header";
import MainContainer from "./MainContainer";
import Login from "./Login";

 function App() {
   const [user, setUser] = useState(null);
   const [mentalData, setMentalData] = useState([]);

   useEffect(() => {
     fetch("/me").then((response) => {
       if (response.ok) {
         response.json().then((user) => setUser(user));
       }
     });
   }, []);

   useEffect(() => {
     fetch("/mental_items")
       .then((r) => r.json())
       .then((item) => {
         setMentalData(item);
       });
   }, []);
   

   function handleLogout() {
     setUser(null);
   }

   function handleUpdateItem(updatedItemObj) {
     const editedItems = mentalData.map((item) => {
       if (item.id === updatedItemObj.id) {
         return updatedItemObj;
       } else {
         return item;
       }
     });
     setMentalData(editedItems);
   }

   if (!user) return <Login onLogin={setUser} />;

   return (
     <div className="App">
       <Header user={user} setUser={setUser} onLogout={handleLogout} />
       <Routes>
         <Route
           exact
           path="*"
           element={
             <MainContainer
               mentalData={mentalData}
               handleUpdateItem={handleUpdateItem}
               user={user}/>
           }
         />
       </Routes>
     </div>
   );
 }

export default App;
