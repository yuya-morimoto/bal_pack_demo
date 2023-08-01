public class Token {
    private final string id;
    private final string token;

    public function init(string id, string token) {
        self.id = id;
        self.token = token;
    }

    public function getId() returns string => self.id;

    public function getToken() returns string => self.token;
}
