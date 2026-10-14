package com.example.assignemt3.controller;

import com.example.assignemt3.entity.CharacterEntity;
import com.example.assignemt3.service.CharacterService;

import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {
    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public List<CharacterEntity> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public CharacterEntity getCharacterById(@PathVariable Long id) {
        return characterService.getCharacterById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CharacterEntity addCharacter(@Valid @RequestBody CharacterEntity character) {
        return characterService.addCharacter(character);
    }

    @PutMapping("/{id}")
    public CharacterEntity updateCharacter(@PathVariable Long id, @Valid @RequestBody CharacterEntity updatedCharacter) {
        return characterService.updateCharacter(id, updatedCharacter);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
    }

    @GetMapping(params = "species")
    public List<CharacterEntity> getCharactersBySpecies(@RequestParam String species) {
        return characterService.getCharactersBySpecies(species);
    }

    @GetMapping (params = "name")
    public List<CharacterEntity> getCharactersByName(@RequestParam String name) {
        return characterService.getCharactersByName(name);
    }
}
