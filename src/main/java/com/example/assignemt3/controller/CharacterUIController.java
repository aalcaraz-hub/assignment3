package com.example.assignemt3.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.example.assignemt3.service.CharacterService;
import com.example.assignemt3.entity.CharacterEntity;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller 
@RequestMapping
public class CharacterUIController {

    private final CharacterService characterService;

    public CharacterUIController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/")
    public String listCharacters(
        @RequestParam(required = false) String name,
        @RequestParam(required = false) String species,
        Model model) {

        List<CharacterEntity> characters = characterService.getAllCharacters();
        if (name != null && !name.isBlank()){
            characters = characterService.getCharactersByName(name);
        }
        if (species != null && !species.isBlank()){
            characters = characterService.getCharactersBySpecies(species);
        }
        model.addAttribute("characters", characters);
        model.addAttribute("name", name);
        model.addAttribute("species", species);

        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/characters/{id}")
    public String details(@PathVariable long id, Model model) {
        CharacterEntity character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/characters/new")
    public String createCharacterForm(Model model) {
        model.addAttribute("character", new CharacterEntity());
        return "new-character-form";
    }

    @PostMapping("/characters")
    public String addCharacter(@ModelAttribute("character") CharacterEntity character) {
        characterService.addCharacter(character);
        return "redirect:/";
    }

    @GetMapping("/characters/{id}/edit")
    public String editCharacterForm(@PathVariable long id, Model model) {
        CharacterEntity character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "new-character-form";
    }

    @PostMapping("/characters/{id}")
    public String updateCharacter(@PathVariable long id, @ModelAttribute("character") CharacterEntity character) {
        characterService.updateCharacter(id, character);
        return "redirect:/characters/" + id;
    }

    @PostMapping("/characters/{id}/delete")
    public String deleteCharacter(@PathVariable long id) {
        characterService.deleteCharacter(id);
        return "redirect:/";
    }
}
