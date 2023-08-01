import ballerina/io;
import bal_pack_demo.domain.entity;

public function main() {
    entity:User user = new ("U00001", "User", 1);
    entity:Token token = new ("U00001", "TOKEN2037562947");

    io:println(user.getName());
    io:println(token.getToken());
}
