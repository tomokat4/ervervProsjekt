import React, { useEffect, useState } from "react";
import BrukerService from "../services/BrukerServices";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";

export const ListBrukereComponent = (props) => {
	// bruk props.showDarkMode til å sjekke om table skal være mørk
	// Sett staten i parent component (app.js)
	// pass setShowDarkTable som en prop til HeaderComponent
	const headingClass = props.showDarkMode ? "text-light" : "text-dark";
	const [bruker, setBruker] = useState([]);

	useEffect(() => {
		BrukerService.getBrukere()
			.then((response) => {
				setBruker(response.data);
				console.log(response.data);
			})
			.catch((error) => {
				console.log(error);
			});
	}, []);

	return (
		<div className="container">
			<h2 className={"text-center mb-5"}>
				{" "}
				Liste av Brukere
			</h2>
			<Table
				variant={props.showDarkMode ? "dark" : "light"}
				bordered
				hover
			>
				<thead
					className={
						props.showDarkMode
							? "bg-dark"
							: "bg-light"
					}
				>
					<th> Bruker id</th>
					<th> Fornavn</th>
					<th> Etternavn</th>
					<th> Jegerstatus</th>
				</thead>
				<tbody>
					{bruker.map((bruker) => (
						<tr key={bruker.idBruker}>
							<td>
								{" "}
								{
									bruker.idBruker
								}
							</td>
							<td>
								{" "}
								{bruker.fornavn}
							</td>
							<td>
								{" "}
								{
									bruker.etternavn
								}
							</td>
							<td>
								{" "}
								{bruker.jegerStatus
									? "Ja"
									: "Nei"}
							</td>
						</tr>
					))}
				</tbody>
			</Table>
		</div>
	);
};

export default ListBrukereComponent;
