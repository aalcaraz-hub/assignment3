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

@Controller 
@RequestMapping
public class CharacterUIController {

    private final CharacterService characterService;

    public CharacterUIController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/")
    public String listCharacters(Model model) {
        model.addAttribute("characters", characterService.getAllCharacters());
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

    @GetMapping("/characters/create")
    public String createCharacterForm(Model model) {
        model.addAttribute("character", new CharacterEntity());
        return "new-character-form";
    }

    @PostMapping("/characters")
    public String addCharacter(@ModelAttribute("character") CharacterEntity character) {
        characterService.addCharacter(character);
        return "redirect:/";
    }
}
