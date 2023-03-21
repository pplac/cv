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

    private final AboutRepository aboutRepo;

    public List<AboutModel> getALLAbout() {
        return aboutRepo.findAll();
    }

    public void addAbout(AboutModel about) {
        aboutRepo.save(about);
    }

    public void deleteAbout(Long id) {
        aboutRepo.deleteById(id);
    }


    public AboutModel getAboutById(Long id) {
        Optional<AboutModel> about = aboutRepo.findById(id);
        if(about.isPresent()){
            return aboutRepo.findById(id).orElse(null);
        } else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditAbout(AboutModel editAbout) {
        aboutRepo.save(editAbout);
    }




//    public void updateAboutDescription(Long id, String description) {
//        aboutRepo.updateDescriptionById(id, description);
//    }
}
