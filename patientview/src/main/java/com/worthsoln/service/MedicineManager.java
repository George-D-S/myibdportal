package com.worthsoln.service;

import com.worthsoln.patientview.model.Medicine;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 */
@Transactional(propagation = Propagation.REQUIRES_NEW)
public interface MedicineManager {

    Medicine get(Long id);

    void save(Medicine medicine);

    List<Medicine> getAll();
}
