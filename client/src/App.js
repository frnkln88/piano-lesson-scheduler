import logo from './logo.svg';
import './App.css';
import React, { useState } from 'react';
import Login from './components/Login';
import {Routes, Route} from 'react-router-dom';
const API = 'http://localhost:3000'

function App() {

  const adminUser = {
    fullname: "Frank Lin",
    email: "franklin@gmail.com",
    password: "franklin"
  }


  return (
    <div className="App">
 
        <Login  path="/login"/>

    </div>
  );
}

export default App;
