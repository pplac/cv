package com.example.cv_kurs.service;


import com.example.cv_kurs.model.EducationModel;
import com.example.cv_kurs.repository.EducationRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Slf4j
@RequiredArgsConstructor
@Service
public class EducationService {

    private final EducationRepository educationRepository;

    public List<EducationModel> getAllEducation() {
        return educationRepository.findAll();
    }

    public void addEducation(EducationModel education) {
        educationRepository.save(education);
    }

    public void deleteEducation(Long id) {
        educationRepository.deleteById(id);
    }

    public EducationModel getEducationById(Long id) {
        Optional <EducationModel> education = educationRepository.findById(id);
        if(education.isPresent()) {
            return educationRepository.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditEducation(EducationModel editEducation) {
        educationRepository.save(editEducation);
    }

}
