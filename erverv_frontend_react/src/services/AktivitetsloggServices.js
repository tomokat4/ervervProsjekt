import axios from "axios";

const AKTIVITETSLOGG_BASE_REST_API_URL =
	"http://localhost:8080/api/v1/Aktivitetslogger";

class AktivitetsloggService {
	getAktivitetslogger() {
		return axios.get(AKTIVITETSLOGG_BASE_REST_API_URL);
	}
}

export default new AktivitetsloggService();
