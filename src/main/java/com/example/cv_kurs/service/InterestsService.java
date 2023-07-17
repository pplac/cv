package com.example.cv_kurs.service;

import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.model.InterestsModel;
import com.example.cv_kurs.repository.InterestsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class InterestsService {

    private final InterestsRepository interestsRepository;

    public List<InterestsModel> getAllInterests() {
        return interestsRepository.findAll();
    }

    public void addInterests(InterestsModel interests) {
        interestsRepository.save(interests);
    }

    public InterestsModel getInterestsById(Long id) {
        Optional<InterestsModel> interests = interestsRepository.findById(id);
        if (interests.isPresent()) {
            return interestsRepository.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditInterests(InterestsModel editInterests) {
        interestsRepository.save(editInterests);
    }

    public void deleteInterests(Long id) {
        interestsRepository.deleteById(id);
    }
}
