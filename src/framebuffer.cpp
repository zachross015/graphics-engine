#include "../includes/framebuffer.h"


FrameBuffer::FrameBuffer(uint32_t width, uint32_t height) {
    this->width = width;
    this->height = height;
    this->max_size = width * height;
    this->pixels = new uint32_t[this->max_size];
}


FrameBuffer::~FrameBuffer() {
    delete pixels;
}


void FrameBuffer::set_pixel(uint32_t x, uint32_t y, uint32_t color) {
    // The pixels array is a flattened version of the screen, so we have to use
    // the flattened address when setting the pixel.
    if(!(x < 0 || y < 0 || x >= width || y >= height)) {
        u32 index = (y * width) + x;
        pixels[(y * width) + x] = color; 
    }
};


void FrameBuffer::clear() {
    for(int i = 0; i < width * height; i++) {
        pixels[i] = BLACK_COLOR;
    }
};
