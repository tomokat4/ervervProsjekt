import Form from 'react-bootstrap/Form';

function SelectforbundComponent() {
  return (
    <Form.Select aria-label="Default select example">
      <option>Velg forbund</option>
      <option value="1">DSSN</option>
      <option value="2">NFS</option>
      <option value="3">DFS</option>
    </Form.Select>
  );
}export default SelectforbundComponent;
