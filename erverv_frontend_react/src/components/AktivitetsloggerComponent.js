import Form from "react-bootstrap/Form";
import InputGroup from "react-bootstrap/InputGroup";
import Button from "react-bootstrap/Button";
import SelectaktivitetComponent from "./SelectaktivitetComponent";
import SelectforbundComponent from "./SelectforbundComponent";
import SelectprogramComponent from "./SelectprogramComponent";
import SelectdatoComponent from "./SelectdatoComponent";

function AktivitetsloggerComponent() {
	return (
		<InputGroup className="mb-2">
			<SelectdatoComponent />
			<SelectaktivitetComponent />
			<SelectprogramComponent />
			<SelectforbundComponent />
			<InputGroup.Text>Kommentar:</InputGroup.Text>
			<Form.Control aria-label="Kommentar" />
			<Button variant="success">Loggfør</Button>{" "}
		</InputGroup>
	);
}
export default AktivitetsloggerComponent;
