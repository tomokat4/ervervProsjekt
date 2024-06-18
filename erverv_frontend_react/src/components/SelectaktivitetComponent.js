import Form from 'react-bootstrap/Form';

function SelectaktivitetComponent() {
  return (
    <Form.Select aria-label="Default select example">
      <option>Velg aktivitet</option>
      <option value="1">Trening</option>
      <option value="2">Stevne</option>
    </Form.Select>
  );
}export default SelectaktivitetComponent;
