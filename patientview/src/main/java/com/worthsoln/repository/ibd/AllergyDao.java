package com.worthsoln.repository.ibd;

import com.worthsoln.ibd.model.Allergy;
import java.util.List;

public interface AllergyDao {

    Allergy get(Long id);

    void save(Allergy allergy);

    List<Allergy> getAllergies(String nhsno);

}
