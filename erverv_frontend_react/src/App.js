import React, { useState } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import HeaderComponent from "./components/HeaderComponent";
import ListBrukereComponent from "./components/ListBrukereComponent";
import OmComponent from "./components/OmComponent";
import AktivitetsloggComponent from "./components/AktivitetsloggComponent";

function App() {
	const [showDarkMode, setShowDarkMode] = useState(false);

	const toggleDarkMode = () => {
		setShowDarkMode(!showDarkMode);
	};

	return (
		<div>
			<Router>
				<HeaderComponent
					showDarkMode={showDarkMode}
					toggleDarkMode={toggleDarkMode}
				/>
				<Routes>
					<Route
						path="/Brukere"
						element={
							<ListBrukereComponent
								showDarkMode={
									showDarkMode
								}
							/>
						}
					/>
					<Route
						path="/Aktivitetslogg"
						element={
							<AktivitetsloggComponent
								showDarkMode={
									showDarkMode
								}
							/>
						}
					/>
					<Route
						path="/Om"
						element={<OmComponent />}
						showDarkMode={showDarkMode}
					/>
				</Routes>
			</Router>
		</div>
	);
}

export default App;
