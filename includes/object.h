#ifndef DRAWABLE_H
#define DRAWABLE_H

#include "framebuffer.h"

/// TEMPORARY, NEED TO FILL OUT
struct Event;

/// Class abstraction for objects which can be drawn to the screen.
struct Object {

    /** Abstraction for a method which draws objects to the frame buffer. This
     * abstraction should be overrided individually so the Window knows how to
     * draw the object.
     *
     * This will usually require calling the draw_to method of encapsulated
     * objects or manipulating the pixels individually.
     *
     * @param {FrameBuffer*} frame_buffer The frame buffer that the current
     *                                    object is being drawn to.
     */
    virtual void draw_to(FrameBuffer* frame_buffer) {};

    virtual void handle_events(Event* e) {};

    virtual void update(f32 dt) {};

};

#endif
