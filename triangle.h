#ifndef TRIANGLE_H
#define TRIANGLE_H

#include "shape.h"

class Triangle : public Shape {
public:
    Triangle(float x, float y, float length, float base_width, SDL_Color color);

    void draw(SDL_Renderer *r);
    virtual void update(float dT) override;

private:
    float m_length;
    float m_base_width;
};

#endif