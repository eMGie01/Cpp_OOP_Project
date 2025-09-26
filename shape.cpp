#include "shape.h"
#include <iostream>

Shape::Shape() : 
    m_x(0.0f), 
    m_y(0.0f), 
    m_rotation(0.0f), 
    m_color({255,255,255,255}), 
    m_scale(1.0f) 
{
    std::cout << "Shape constructor called.\n";
}

Shape::~Shape() {
    std::cout << "Shape destructor called.\n";
}

void Shape::set_position(float x, float y) {
    m_x = x;
    m_y = y;
}

void Shape::set_rotation(float angle) {
    m_rotation = angle;
}

void Shape::set_color(SDL_Color color) {
    m_color = color;
}

void Shape::set_scale(float scale) {
    m_scale = scale;
}

float Shape::get_x() const {
    return m_x;
}

float Shape::get_y() const {
    return m_y;
}

float Shape::get_rotation() const {
    return m_rotation;
}

SDL_Color Shape::get_color() const {
    return m_color;
}

float Shape::get_scale() const {
    return m_scale;
}