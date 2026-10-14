package com.example.assignemt3.service;

import com.example.assignemt3.entity.CharacterEntity;
import com.example.assignemt3.repository.CharacterRepository;
import org.springframework.stereotype.Service;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class CharacterService {
    
    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<CharacterEntity> getAllCharacters() {
        return characterRepository.findAll();
    }

    public CharacterEntity getCharacterById(Long id) {
        return characterRepository.findById(id).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Character not found with id: " + id));
    }

    public CharacterEntity addCharacter(CharacterEntity character) {
        return characterRepository.save(character);
    }

    public CharacterEntity updateCharacter(Long id, CharacterEntity updatedCharacter) {
        CharacterEntity existingCharacter = characterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));

        existingCharacter.setName(updatedCharacter.getName());
        existingCharacter.setDescription(updatedCharacter.getDescription());
        existingCharacter.setUniverse(updatedCharacter.getUniverse());
        existingCharacter.setSpecies(updatedCharacter.getSpecies());

        return characterRepository.save(existingCharacter);
    }

    public void deleteCharacter(Long id) {
        if (!characterRepository.existsById(id)) {
            throw new RuntimeException("Character not found with id: " + id);
        }
        characterRepository.deleteById(id);
    }

    public List<CharacterEntity> getCharactersBySpecies(String species) {
        return characterRepository.findBySpeciesContainingIgnoreCase(species);
    }
}
