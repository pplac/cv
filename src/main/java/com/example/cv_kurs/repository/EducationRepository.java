package com.example.cv_kurs.repository;

import com.example.cv_kurs.model.EducationModel;
import com.example.cv_kurs.model.ExperienceModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EducationRepository extends JpaRepository<EducationModel, Long> {

    Page<EducationModel> findAllBy(Pageable pageable);
}
