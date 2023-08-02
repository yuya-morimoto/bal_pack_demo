import bal_pack_demo.domain.entity;
import ballerina/http;

service /auth on new http:Listener(8080) {
    resource function get user(http:Caller caller, http:Request request) returns error? {
        final entity:User user = {id: "U00001", name: "YUYA", age: 23};
        http:Response response = new;
        response.setJsonPayload(user);
        response.statusCode = http:STATUS_CREATED;
        check caller->respond(response);
    }
}
