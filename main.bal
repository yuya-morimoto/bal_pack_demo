import bal_pack_demo.domain.entity;
import ballerina/http;

service /auth on new http:Listener(8080) {
    resource function get user(http:Caller caller, http:Request request) returns error? {
        final entity:User user = new ("UID1", "YUYA", 23);
        http:Response response = new;
        response.setJsonPayload(string `${user.getId()}-${user.getName()}`);
        response.statusCode = http:STATUS_CREATED;
        check caller->respond(response);
    }
}
