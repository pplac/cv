package com.example.cv_kurs.service;

import com.example.cv_kurs.model.PersonalSkillsModel;
import com.example.cv_kurs.model.TechnicalSkillsModel;
import com.example.cv_kurs.repository.PersonalSkillsRepository;
import com.example.cv_kurs.repository.TechnicalSkillsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Slf4j
@Service
@RequiredArgsConstructor
public class PersonalSkillsService {

    private final PersonalSkillsRepository personalSkillsRepository;

    public List<PersonalSkillsModel> getAllPersonalSkills() {
        return personalSkillsRepository.findAll();
    }

    public void addPersonalSkills(PersonalSkillsModel personalSkills) {
        personalSkillsRepository.save(personalSkills);
    }

    public void deletePersonalSkills(Long id) {
        personalSkillsRepository.deleteById(id);
    }

    public PersonalSkillsModel getPersonalSkillsById(Long id) {
        Optional<PersonalSkillsModel> skills = personalSkillsRepository.findById(id);
        if (skills.isPresent()) {
            return personalSkillsRepository.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditPersonalSkills(PersonalSkillsModel skillsModel) {
        personalSkillsRepository.save(skillsModel);
    }
}
