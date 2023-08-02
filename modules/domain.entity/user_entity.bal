public type User record {|
    readonly string id;
    string name;
    int age;
|};

public table<User> key(id) USER_MASTER = table [
    {id: "U00001", name: "N00001", age: 13},
    {id: "U00002", name: "N00002", age: 16},
    {id: "U00003", name: "N00003", age: 23}
];
