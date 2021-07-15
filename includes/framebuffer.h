#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include <cstdint>
#include "constants.h"

/// Frame buffer for direct pixel manipulation.
struct FrameBuffer {

    // The width of the screen and hence width of the buffer
    uint32_t width;

    // The height of the screen and hence height of the buffer
    uint32_t height;

    // Color values for all the pixels on the screen
    uint32_t* pixels;

    // Max number of pixels on the screen
    uint32_t max_size;

    FrameBuffer(uint32_t width, uint32_t height);
    ~FrameBuffer(); 
    
    /** Sets the color of an individual pixel in the buffer.
     *
     * @param {uint32_t} x     The x coordinate of the pixel 
     * @param {uint32_t} y     The y coordinate of the pixel
     * @param {uint32_t} color The color for the pixel
     */
    void set_pixel(uint32_t x, uint32_t y, uint32_t color);

    /** Clears the frame buffer by resetting all the values to being black.
     */
    void clear();
};

#endif
