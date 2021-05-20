package ru.mirea.LesgoLanguage.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Moskovka Artyom
 */
@Controller
public class PostController {

    @GetMapping("/post")
    public String post(Model model) {
//        model.addAttribute("posts", )
        return "post";
    }
}
