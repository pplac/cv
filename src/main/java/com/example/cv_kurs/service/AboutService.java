package com.example.cv_kurs.service;

import com.example.cv_kurs.model.AboutModel;
import com.example.cv_kurs.repository.AboutRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class AboutService {

    private final AboutRepository aboutRepository;

    public List<AboutModel> getALLAbout() {
        return aboutRepository.findAll();
    }

    public void addAbout(AboutModel about) {
        aboutRepository.save(about);
    }

    public void deleteAbout(Long id) {
        aboutRepository.deleteById(id);
    }

    public AboutModel getAboutById(Long id) {
        Optional<AboutModel> about = aboutRepository.findById(id);
        if (about.isPresent()) {
            return aboutRepository.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditAbout(AboutModel editAbout) {
        aboutRepository.save(editAbout);
    }
}
