public class User {
    private final string id;
    private final string name;
    private final int age;

    public function init(string id, string name, int age) {
        self.id = id;
        self.name = name;
        self.age = age;
    }

    public function getId() returns string => self.id;

    public function getName() returns string => self.name;

    public function getAge() returns int => self.age;
}
