package com.example.assignemt3.repository;

import com.example.assignemt3.entity.CharacterEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CharacterRepository extends JpaRepository<CharacterEntity, Long> {
    List<CharacterEntity> findBySpeciesContainingIgnoreCase(String species);
    List<CharacterEntity> findByNameContainingIgnoreCase(String name);
}
