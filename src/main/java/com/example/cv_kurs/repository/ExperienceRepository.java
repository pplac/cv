package com.example.cv_kurs.repository;

import com.example.cv_kurs.model.ExperienceModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface ExperienceRepository extends JpaRepository<ExperienceModel, Long> {


    Page<ExperienceModel> findAllBy(Pageable pageable);

}
