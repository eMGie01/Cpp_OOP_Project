#ifndef SHAPE_H
#define SHAPE_H

#include <SDL2/SDL.h>

class Shape {
public:
    // constructor / destructor
    Shape();
    virtual ~Shape();

    // functions (pure virtual)
    virtual void draw(SDL_Renderer *r) = 0;
    virtual void update(float dT) = 0;
    // functions (not pure virtual)
    // Setters
    virtual void set_position(float x, float y);
    virtual void set_rotation(float angle); // in degrees
    virtual void set_color(SDL_Color color);
    virtual void set_scale(float scale);
    // Getters
    virtual float get_x() const;
    virtual float get_y() const;
    virtual float get_rotation() const; // in degrees
    virtual SDL_Color get_color() const;
    virtual float get_scale() const;

protected:
    float m_x, m_y; // position
    float m_rotation; // in degrees
    SDL_Color m_color; // color
    float m_scale; // scale
};

#endif