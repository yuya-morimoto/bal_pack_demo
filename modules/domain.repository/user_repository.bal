import bal_pack_demo.domain.entity;

public function findByKey(string id) returns entity:User? {
    return entity:USER_MASTER[id];
}
