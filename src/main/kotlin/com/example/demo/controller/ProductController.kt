package com.example.demo.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class ProductController {
    @GetMapping("/products")
    fun exemplo(): String {
        return "Olá do controller!"
    }
}