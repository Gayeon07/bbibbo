import React from 'react';
import './style.css';
import { useState } from 'react';
import icon from './search_icn.png';


function SearchBar() {
  const [query, setQuery] = useState('');

  const handleInputChange = (event) => {
    setQuery(event.target.value);
  };

  const handleSearch = () => {
    console.log('Searching for:', query);
    // 검색 동작 실행
  };

  const handleKeyPress = (event) => {
    if (event.key === 'Enter') {
      handleSearch();
    }
  };

  return (
      <div className="bar">
        <div className="search-bar">
          <input
            type="text"
            value={query}
            onChange={handleInputChange}
            onKeyPress={handleKeyPress}
            placeholder="검색어를 입력하세요"
            className="search-input"
          />
          <button onClick={handleSearch} className="search-button">
            <img src={icon} className="icn" />
          </button>
        </div>
        <div className="tag">
          <button className="tag_button">tag1</button>
          <button className="tag_button">tag2</button>
          <button className="tag_button">tag3</button>
          <button className="tag_button">tag4</button>
          <button className="tag_button">tag5</button>
        </div>
      </div>
      );
}

export default SearchBar;
