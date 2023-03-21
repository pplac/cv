package com.example.cv_kurs.service;

import com.example.cv_kurs.model.InterestsModel;
import com.example.cv_kurs.repository.InterestsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public void deleteInterests(Long id) {
        interestsRepository.deleteById(id);
    }


}
