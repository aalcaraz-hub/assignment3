package com.example.assignemt3.repository;

import com.example.assignemt3.entity.CharacterEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<CharacterEntity, Long> {
    
}
