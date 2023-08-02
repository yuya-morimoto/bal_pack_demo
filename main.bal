import bal_pack_demo.domain.entity;
import bal_pack_demo.domain.usecase;
import ballerina/http;

service / on new http:Listener(8080) {
    resource function get user/[string id](http:Caller caller, http:Request request) returns error? {
        final entity:User? user = usecase:getUserFindByKey(id);
        if user is () {
            http:Response response = new;
            response.setJsonPayload("not found");
            response.statusCode = http:STATUS_BAD_REQUEST;
            check caller->respond(response);
        } else {
            http:Response response = new;
            response.setJsonPayload(user);
            response.statusCode = http:STATUS_CREATED;
            check caller->respond(response);
        }
    }
}
