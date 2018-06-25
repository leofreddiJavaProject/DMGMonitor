package Quake.repository;

import Quake.model.Generale;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GeneraleRepository extends CrudRepository<Generale,Long> {

    public List<Generale> findAll();
}
