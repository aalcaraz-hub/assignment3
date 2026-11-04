package com.example.assignemt3.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.assignemt3.service.CharacterService;
import com.example.assignemt3.entity.CharacterEntity;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;

@Controller 
@RequestMapping ("/characters")
public class CharacterUIController {

    private final CharacterService characterService;

    public CharacterUIController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/{id}")
    public String details(@PathVariable long id, Model model) {
        CharacterEntity character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

}
