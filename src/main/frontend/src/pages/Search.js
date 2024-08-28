import React, { useState, useEffect } from 'react';
import './style.css';
import icon from './search_icn.png';
import axios from 'axios';

function SearchBar() {
  const [query, setQuery] = useState('');
  const [reports, setReports] = useState([]);
  const [filteredReports, setFilteredReports] = useState([]);
  const [tags, setTags] = useState([]);

  useEffect(() => {
    axios.get('/api/combined-reports')
      .then(response => {
        setReports(response.data);
        setFilteredReports(response.data); // 초기에는 모든 데이터를 표시
        generateRandomTags(response.data);
      })
      .catch(error => console.error(error));
  }, []);

  const handleInputChange = (event) => {
    setQuery(event.target.value);
  };

  const filterReports = (searchQuery) => {
    const queryToUse = searchQuery || query;
    if (queryToUse === '') {
      setFilteredReports(reports); // 검색어가 없으면 모든 데이터 표시
    } else {
      const newFilteredReports = reports.filter(report =>
        report.words.some(word => word.includes(queryToUse))
      );
      setFilteredReports(newFilteredReports);
    }
  };

  const handleSearch = () => {
    console.log('Searching for:', query);
    filterReports();
  };

  const handleKeyPress = (event) => {
    if (event.key === 'Enter') {
      handleSearch();
    }
  };

  const generateRandomTags = (reports) => {
    const allWords = reports.flatMap(report => report.words);
    const uniqueWords = [...new Set(allWords)]; // 중복 제거

    // 랜덤으로 5개의 태그를 선택
    const randomTags = [];
    for (let i = 0; i < 5; i++) {
      if (uniqueWords.length === 0) break;
      const randomIndex = Math.floor(Math.random() * uniqueWords.length);
      randomTags.push(uniqueWords[randomIndex]);
      uniqueWords.splice(randomIndex, 1); // 선택된 태그는 리스트에서 제거
    }

    setTags(randomTags);
  };

  const handleTagClick = (tag) => {
    setQuery(tag);
    filterReports(tag);
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
          <img src={icon} className="icn" alt="Search" />
        </button>
      </div>
      <div className="tag">
        {tags.map((tag, index) => (
          <button
            key={index}
            className="tag_button"
            onClick={() => handleTagClick(tag)}
          >
            {tag}
          </button>
        ))}
      </div>
      <div className="disaster_alarm_window">
        {filteredReports.map((report, index) => (
          <div className="disaster_alarm" key={index}>
            <p>{report.text}</p>
            <p>{report.time}</p>
            <p>지역: {report.location}</p>
            <p>Tag: {report.words.join(', ')}</p>
          </div>
        ))}
      </div>
    </div>
  );
}

export default SearchBar;
