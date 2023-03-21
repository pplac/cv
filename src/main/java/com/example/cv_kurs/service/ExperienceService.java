package com.example.cv_kurs.service;


import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.model.ExperienceModel;
import com.example.cv_kurs.repository.ExperienceRepository;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j
@RequiredArgsConstructor
@Service
public class ExperienceService {

    private final ExperienceRepository repo;


    public List<ExperienceModel> getAllExperiences() {
        return repo.findAll();
    }

    public void addExperience(ExperienceModel experience) {
        repo.save(experience);
    }

    public void deleteExperience(Long id) {
        repo.deleteById(id);
    }

    public ExperienceModel getExperienceById(Long id) {
        Optional<ExperienceModel> experience = repo.findById(id);
        if(experience.isPresent()){
            return repo.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditExperience(ExperienceModel editExperience) {
        repo.save(editExperience);
    }



}
