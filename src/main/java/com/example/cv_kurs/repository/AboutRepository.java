package com.example.cv_kurs.repository;


import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.model.ExperienceModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface AboutRepository extends JpaRepository<AboutModel, Long> {

//    @Modifying
//    @Transactional
//    @Query("UPDATE AboutModel a SET a.description = :description WHERE a.id = :id")
//    int updateDescriptionById(@Param("id") Long id, @Param("description") String description);

//    Optional<AboutModel> findById(Long id);

    Page<AboutModel> findAllBy(Pageable pageable);


}
