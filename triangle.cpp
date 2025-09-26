#include "triangle.h"
#include <cmath>

Triangle::Triangle(float x, float y, float length, float base_width, SDL_Color color) :
    m_length(length),
    m_base_width(base_width)
{
    set_position(x,y);
    set_color(color);
}

void Triangle::draw(SDL_Renderer *r) {
    if (!r) return;

    SDL_FPoint points[4];
    float rad = get_rotation() * M_PI / 180.0f;
    float centerX = get_x();
    float centerY = get_y();
    float scale = get_scale();
    points[0].x = centerX + m_length * scale * sin(rad);
    points[0].y = centerY - m_length * scale * cos(rad);
    points[1].x = centerX + (m_base_width/2) * scale * sin(rad + M_PI / 2);
    points[1].y = centerY - (m_base_width/2) * scale * cos(rad + M_PI / 2);
    points[2].x = centerX + (m_base_width/2) * scale * sin(rad - M_PI / 2);
    points[2].y = centerY - (m_base_width/2) * scale * cos(rad - M_PI / 2);
    points[3].x = points[0].x;
    points[3].y = points[0].y;

    SDL_Color color = get_color();
    SDL_SetRenderDrawColor(r, color.r, color.g, color.b, color.a); // red triangle
    SDL_RenderDrawLinesF(r, points, 4);
}

void Triangle::update(float dT) {
    return;
}