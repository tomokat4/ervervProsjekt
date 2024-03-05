import axios from 'axios'

const BRUKER_BASE_REST_API_URL = 'http://localhost:8080/api/v1/Brukere';

class BrukerService{
    getBrukere(){
        return axios.get(BRUKER_BASE_REST_API_URL)
    }
}

export default new BrukerService();