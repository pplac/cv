package com.example.cv_kurs.repository;

import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.model.TechnicalSkillsModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TechnicalSkillsRepository extends JpaRepository<TechnicalSkillsModel, Long> {

    Page<AboutModel> findAllBy(Pageable pageable);

}
