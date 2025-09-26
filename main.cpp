#include <iostream>
#include "sdl_app.h"

using namespace std;

int main(int argc, char *argv[])
{
    SDLApp app;
    Err err = app.init("SDL_Application", 1920, 1080);
    if (err == OK) {
        app.run();
    } else {
        cout << "Failed to initialize SDLApp." << endl;
    }

    return 0;
}