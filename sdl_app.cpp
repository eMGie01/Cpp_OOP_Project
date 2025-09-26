#include <iostream>
#include <cmath>
#include <algorithm>
#include "sdl_app.h"

// Constructor
SDLApp::SDLApp() : 
    window(nullptr),
    renderer(nullptr),
    windowWidth(0),
    windowHeight(0),
    isRunning(false),
    triangle(0.0f,0.0f,0.0f,0.0f,{255,255,255,255})
{
    std::cout << "SDLApp constructor called.\n";
}

// Destructor
SDLApp::~SDLApp() {
    cleanup();
    std::cout << "SDL destructor called.\n";
}

// Init window
Err SDLApp::init(const char *title, uint16_t width, uint16_t height) {
    SDL_Init(SDL_INIT_VIDEO);

    windowWidth = width;
    windowHeight = height;
    
    window = SDL_CreateWindow(  
        title,
        SDL_WINDOWPOS_CENTERED, 
        SDL_WINDOWPOS_CENTERED, 
        width, 
        height, 
        SDL_WINDOW_FULLSCREEN
    );
    if (!window) {
        std::cout << "Window init Error [" << SDL_GetError() << ")\n";
        return ERROR;
    }

    renderer = SDL_CreateRenderer(
        window,
        -1,
        SDL_RENDERER_PRESENTVSYNC 
    );
    if (!renderer) {
        std::cout << "Renderer init Error (" << SDL_GetError() << ")\n";
        return ERROR;
    }
    return OK;
}

void SDLApp::run(void) {
    isRunning =  true;
    
    std::cout << "creating ner triangle\n";
    triangle = Triangle(windowWidth/2, windowHeight/2, 80, 50, {0,255,0,255});
    float new_x = triangle.get_x(), new_y = triangle.get_y();
    std::cout << "triangle created\n";

    while (isRunning) {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                isRunning = false;
            }
        }
        
        triangle_rotation(&triangle);
        triangle.set_position(new_x,new_y);
        updateXY(&new_x, &new_y);
        
        SDL_Delay(12); // Roughly 60 FP
    }
}

void SDLApp::updateXY(float *x, float *y) {
    static int multiplyerX = 10, multiplyerY = 10;
    
    *x += multiplyerX;
    *y += multiplyerY;
    
    if (*x >= windowWidth || *x <= 0.0f) {
        multiplyerX *= (-1);
        *x += multiplyerX;
    }
    if (*y >= windowHeight || *y <= 0.0f) {
        multiplyerY *= (-1);
        *y += multiplyerY;
    }
}

void SDLApp::triangle_rotation(Triangle *t) {

    // getting mouse position
    int mouseX, mouseY;
    SDL_GetMouseState(&mouseX, &mouseY);

    // calculating angle based on mouse position
    float centerX = t->get_x();
    float centerY = t->get_y();
    float angle = atan2(mouseY-centerY, mouseX-centerX) * 180.0f / M_PI + 90.0f;
    t->set_rotation(angle);
    // Drawing & clearing screen
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255); // black background
    SDL_RenderClear(renderer);

    // Triangle "watching the mouse"
    t->draw(renderer);
    SDL_RenderPresent(renderer);
}

void SDLApp::cleanup(void) {
    
    if (window) {
        SDL_DestroyWindow(window);
        window = nullptr;
    }
    SDL_Quit();
}