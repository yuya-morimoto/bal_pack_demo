import bal_pack_demo.domain.entity;
import bal_pack_demo.domain.repository;

public function getUserFindByKey(string id) returns entity:User? {
    return repository:findByKey(id);
}
