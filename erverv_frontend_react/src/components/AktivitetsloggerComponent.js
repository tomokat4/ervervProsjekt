import Form from "react-bootstrap/Form";
import InputGroup from "react-bootstrap/InputGroup";
import Button from "react-bootstrap/Button";
import SelectloggerComponent from "./SelectloggerComponent";

function AktivitetsloggerComponent() {
	return (
		<InputGroup className="mb-2">
			<SelectloggerComponent />
			<SelectloggerComponent />
			<SelectloggerComponent />
			<InputGroup.Text>Kommentar:</InputGroup.Text>
			<Form.Control aria-label="Kommentar" />
			<Button variant="success">Loggfør</Button>{" "}
		</InputGroup>
	);
}
export default AktivitetsloggerComponent;
