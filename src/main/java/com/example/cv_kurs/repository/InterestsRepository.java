package com.example.cv_kurs.repository;

import com.example.cv_kurs.model.EducationModel;
import com.example.cv_kurs.model.InterestsModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InterestsRepository extends JpaRepository<InterestsModel, Long> {

    Page<InterestsModel> findAllBy(Pageable pageable);
}
