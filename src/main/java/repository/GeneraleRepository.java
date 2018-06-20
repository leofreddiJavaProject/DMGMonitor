package repository;

import model.Generale;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GeneraleRepository extends CrudRepository<Generale,Long> {
    List<Generale> findAll();
}
