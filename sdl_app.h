#ifndef SDLAPP_H
#define SDLAPP_H

#include <SDL2/SDL.h>
#include "triangle.h"

enum Err {
    OK = 0,
    ERROR = 1
};

class SDLApp {
public:
    // constructor / destructor
    SDLApp();
    ~SDLApp();

    // functions
    Err init(const char *title, uint16_t width, uint16_t height);
    void run(void);

private:
    // variables
    SDL_Window * window;
    SDL_Renderer * renderer;
    int windowWidth;
    int windowHeight;
    bool isRunning;
    // Object
    Triangle triangle;
    // functions
    void updateXY(float *x, float *y);
    void triangle_rotation(Triangle *t);
    void draw_triangle(int centerX, int centerY, int length, int base_width, float angle);
    void cleanup(void);
};

#endif