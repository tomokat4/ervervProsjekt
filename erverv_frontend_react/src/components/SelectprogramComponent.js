import Form from 'react-bootstrap/Form';

function SelectprogramComponent() {
  return (
    <Form.Select aria-label="Default select example">
      <option>Velg program</option>
      <option value="1">Open Rifle</option>
      <option value="2">Standard Rifle</option>
      <option value="3">Minirifle</option>
    </Form.Select>
  );
}export default SelectprogramComponent;
