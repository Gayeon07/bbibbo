import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';
import Home from './pages/Home';
import About from './pages/About';
import Contact from './pages/Contact';
import Location from './pages/Location';
import './App.css';

function App() {
  const [message, setMessage] = useState([]);
  const [activeLink, setActiveLink] = useState("/");

  useEffect(() => {
    fetch("/api/demo-web")
      .then((response) => response.json())
      .then((data) => setMessage(data));
  }, []);

  return (
    <Router>
      <ul>
        <li>
          <Link
            to="/"
            className={activeLink === "/" ? "active" : ""}
            onClick={() => setActiveLink("/")}
          >
            Home
          </Link>
        </li>
        <li>
          <Link
            to="/1"
            className={activeLink === "/1" ? "active" : ""}
            onClick={() => setActiveLink("/1")}
          >
            About
          </Link>
        </li>
        <li>
          <Link
            to="/2"
            className={activeLink === "/2" ? "active" : ""}
            onClick={() => setActiveLink("/2")}
          >
            Contact
          </Link>
        </li>
        <li>
          <Link
            to="/3"
            className={activeLink === "/3" ? "active" : ""}
            onClick={() => setActiveLink("/3")}
          >
            Location
          </Link>
        </li>
      </ul>

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/1" element={<About />} />
        <Route path="/2" element={<Contact />} />
        <Route path="/3" element={<Location />} />
      </Routes>
    </Router>
  );
}

export default App;
