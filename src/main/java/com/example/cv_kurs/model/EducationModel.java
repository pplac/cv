package com.example.cv_kurs.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class EducationModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "university")
    private String university;

    @Column(name = "academic_title")
    private String academicTitle;

    @Column(name = "course")
    private String course;

    @Column(name = "grade")
    private String grade;

    @Column(name = "course_date")
    private String courseDate;
}
