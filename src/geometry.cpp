#include "../includes/geometry.h"
#include <cmath>
#include <iostream>

// POINT

void Point::draw_to(FrameBuffer* frame_buffer) {
    frame_buffer->set_pixel((uint32_t)this->v.x, (uint32_t)this->v.y, WHITE_COLOR); 
};

// LINE

Line::Line(Vec2f v1, Vec2f v2)  {
    this->origin = (v1 + v2) / 2;
    this->v1 = v1;
    this->v2 = v2;
};

void Line::draw_to(FrameBuffer* frame_buffer) {

    Vec2f v1 = transform(this->v1);
    Vec2f v2 = transform(this->v2);

    // Initial coordinates and modifiers for incrementing the bresenham
    // algorithm
    int32_t x_coord = v1.x;
    int32_t y_coord = v1.y;
    i32 x_final = v2.x;
    i32 y_final = v2.y;
    Vec2i delta = v2 - v1;
    Vec2i mod = { delta.x < 0 ? -1 : 1, delta.y < 0 ? -1 : 1 };
    int32_t e, inc1, inc2;

    // i32his is the code for the bresenham algorithm, modified to take into
    // account all the edge cases so that delta.x and delta.y can take on any value (so
    // long as they are on the screen). We separate into the two cases where 
    // the slope is a function of x and where the slope is a function of y.
    // NOi32E: I tried separating this into two functions, but the overhead of the
    // function call would supercede the cost of the basic line algorithm since
    // there are no function calls there
    if(abs(delta.y) < abs(delta.x)) {
        e = (abs(delta.y) << 1) - abs(delta.x);
        inc1 = abs(delta.y) << 1;
        inc2 = (abs(delta.y) - abs(delta.x)) << 1;

        while(x_coord != x_final) {
            frame_buffer->set_pixel(x_coord, y_coord, WHITE_COLOR);
            if(e < 0) {
                e = e + inc1;
            } else {
                y_coord = y_coord + mod.y;
                e = e + inc2;
            }
            x_coord = x_coord + mod.x;
        }

    } else {
        e = (abs(delta.x) << 1) - abs(delta.y);
        inc1 = abs(delta.x) << 1;
        inc2 = (abs(delta.x) - abs(delta.y)) << 1;

        while(y_coord != y_final) {
            frame_buffer->set_pixel(x_coord, y_coord, WHITE_COLOR);
            if(e < 0) {
                e = e + inc1;
            } else {
                x_coord = x_coord + mod.x;
                e = e + inc2;
            }
            y_coord = y_coord + mod.y;
        }
    }

}
