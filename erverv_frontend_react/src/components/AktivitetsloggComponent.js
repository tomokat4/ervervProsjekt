import React, { useEffect, useState } from "react";
import AktivitetsloggService from "../services/AktivitetsloggServices";
import Table from "react-bootstrap/Table";
import AktivitetsloggerComponent from "./AktivitetsloggerComponent";

export const AktivitetsloggComponent = (props) => {
	// bruk props.showDarkMode til å sjekke om table skal være mørk
	// Sett staten i parent component (app.js)
	// pass setShowDarkTable som en prop til HeaderComponent
	const headerClass = props.showDarkMode
		? "bg-dark text-light"
		: "bg-light";

	const [aktivitetslogg, setAktivitetslogg] = useState([]);

	useEffect(() => {
		AktivitetsloggService.getAktivitetslogger()
			.then((response) => {
				setAktivitetslogg(response.data);
				console.log(response.data);
			})
			.catch((error) => {
				console.log(error);
			});
	}, []);

	return (
		<div className="container">
			<h2 className={`text-center mb-5`}> Aktivitetslogg</h2>
			<AktivitetsloggerComponent
				showDarkMode={props.showDarkMode}
			/>
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
					<th> Bruker-id</th>
					<th> Dato</th>
					<th> Aktivitet</th>
					<th> Program</th>
					<th> Forbund</th>
					<th> Kommentar</th>
				</thead>
				<tbody>
					{aktivitetslogg.map(
						(aktivitetslogg) => (
							<tr
								key={
									aktivitetslogg.idBruker
								}
							>
								<td>
									{" "}
									{
										aktivitetslogg.idBruker
									}
								</td>
								<td>
									{" "}
									{
										aktivitetslogg.dato
									}
								</td>
								<td>
									{" "}
									{
										aktivitetslogg.aktivitet
									}
								</td>
								<td>
									{" "}
									{
										aktivitetslogg.programnavn
									}
								</td>
								<td>
									{" "}
									{
										aktivitetslogg.forbund
									}
								</td>
								<td>
									{" "}
									{
										aktivitetslogg.kommentar
									}
								</td>
							</tr>
						)
					)}
				</tbody>
			</Table>
		</div>
	);
};

export default AktivitetsloggComponent;
