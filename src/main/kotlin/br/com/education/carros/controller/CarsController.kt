package br.com.education.carros.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloController {

    @GetMapping("/cars")
    fun hello(): String {
        return "Hello World"
    }
}