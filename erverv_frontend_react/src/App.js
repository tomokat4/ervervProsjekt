import { useState } from "react"
import logo from './logo.svg';
import './App.css';
import { ListBrukereComponent } from './components/ListBrukereComponent';
import HeaderComponent from './components/HeaderComponent';

function App() {
  const [showDarkMode, setShowDarkMode] = useState(false)

  const toggleDarkMode = () => {
	setShowDarkMode(!showDarkMode)
  }


  return (
    <div>
      <HeaderComponent showDarkMode={showDarkMode} toggleDarkMode={toggleDarkMode} />
      <ListBrukereComponent showDarkMode={showDarkMode} />
    </div>
    
  );
}

export default App;
