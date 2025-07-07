package com.example.app;

public class App {
    public String greet(String name) {
        return "Hola " + name;
    }

    public static void main(String[] args) {
        App app = new App();
        System.out.println(app.greet("Mundo"));
    }
}
