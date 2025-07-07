package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {

    @Test
    void testSuma() {
        App app = new App();
        assertEquals(5, app.sumar(2, 3));
    }
}
