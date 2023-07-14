package com.example.cv_kurs.service;

import com.example.cv_kurs.model.TechnicalSkillsModel;
import com.example.cv_kurs.repository.TechnicalSkillsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Slf4j
@Service
@RequiredArgsConstructor
public class TechnicalSkillsService {

    private final TechnicalSkillsRepository technicalSkillsRepository;

    public List<TechnicalSkillsModel> getAllTechnicalSkills() {
        return technicalSkillsRepository.findAll();
    }

    public void addTechnicalSkills(TechnicalSkillsModel technicalSkills) {
        technicalSkillsRepository.save(technicalSkills);
    }

    public void deleteTechnicalSkills(Long id) {
        technicalSkillsRepository.deleteById(id);
    }
}
