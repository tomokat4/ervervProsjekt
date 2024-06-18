import Form from 'react-bootstrap/Form';

function SelectdatoComponent() {
  return (
    <>
      <Form.Label htmlFor="inputDate1"></Form.Label>
      <Form.Control
        type="date"
        id="inputDate1"
      />
    </>
  );
}

export default SelectdatoComponent;
