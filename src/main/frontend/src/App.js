import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Route, Routes, Link, useLocation } from 'react-router-dom';
import Home from './pages/Home';
import Search from './pages/Search';
import './App.css';

function App() {
  const location = useLocation();
  const [activeLink, setActiveLink] = useState(location.pathname);

  useEffect(() => {
    setActiveLink(location.pathname);
  }, [location]);

  return (
    <div>
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
            to="/Search"
            className={activeLink === "/Search" ? "active" : ""}
            onClick={() => setActiveLink("/Search")}
          >
            Search
          </Link>
        </li>
      </ul>

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/Search" element={<Search />} />
      </Routes>
    </div>
  );
}

export default function AppWrapper() {
  return (
    <Router>
      <App />
    </Router>
  );
}
