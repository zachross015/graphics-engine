#ifndef GEOMETRY_H
#define GEOMETRY_H 

#include "object.h"
#include "transform.h"


/// Template structure for two dimensional points.
struct Point : Object {

    // The vector coordinate of the point
    Vec2f v;

    Point(Vec2f v) : v(v) {};
    Point(f32 x, f32 y) : v(x, y) {}; 

    // Object implementations
    virtual void draw_to(FrameBuffer* frame_buffer); 
    virtual void handle_events(Event* e) {};
    virtual void update(f32 dt) {};
};

/// Template structure for two dimensional lines.
struct Line : Object, Transform {
    private: 
    Vec2f v1;
    Vec2f v2;

    public:
    Line(Vec2f v1, Vec2f v2);
    Line(f32 x1, f32 y1, f32 x2, f32 y2) : Line(Vec2f(x1, y1), Vec2f(x2, y2)) {};


    // Object implementations
    virtual void draw_to(FrameBuffer* frame_buffer); 
    virtual void handle_events(Event* e) {};
    virtual void update(f32 dt) {};
};

struct Rect : Transform {
    f32 x;
    f32 y;
    f32 width;
    f32 height;
};


#endif
