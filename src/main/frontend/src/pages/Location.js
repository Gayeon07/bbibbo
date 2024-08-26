import React from 'react';
import './style.css';

function Location() {
  return (
    <div className="list">
      <button className="list_button">지역</button>
      <button className="list_button">인기</button>
      <button className="list_button">최신</button>
    </div>
  );
}

export default Location;