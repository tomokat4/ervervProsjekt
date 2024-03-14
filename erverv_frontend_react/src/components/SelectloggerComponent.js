import Dropdown from "react-bootstrap/Dropdown";
import DropdownButton from "react-bootstrap/DropdownButton";

function SelectloggerComponent() {
	return (
		<Dropdown>
			<Dropdown.Toggle
				variant="secondary"
				id="dropdown-basic"
			>
				Velg Forbund
			</Dropdown.Toggle>

			<Dropdown.Menu>
				<Dropdown.Item href="#/action-1">
					DSSN
				</Dropdown.Item>
				<Dropdown.Item href="#/action-2">
					NSF
				</Dropdown.Item>
				<Dropdown.Item href="#/action-3">
					DFS
				</Dropdown.Item>
			</Dropdown.Menu>
		</Dropdown>
	);
}
export default SelectloggerComponent;
