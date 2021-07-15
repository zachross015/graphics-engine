#include <iostream>
#include <cstdint>
#include <cstdlib>
#include <cmath>
#include <algorithm>
#include <SDL2/SDL.h>
#include <vector>
#include "../includes/geometry.h"
#include "../includes/camera.h"


class Window {

    SDL_Window* win;
    SDL_Renderer* renderer;
    SDL_Texture* frame_texture;
    FrameBuffer* frame_buffer;

    uint32_t width; 
    uint32_t height;


    std::vector<Object*> objects;

    public: 
    Window(const char* name, uint32_t x, uint32_t y, uint32_t w, uint32_t h) {
        // Initialize SDL
        if(SDL_Init(SDL_INIT_VIDEO) < 0) {
            std::cout <<  "Error in Window Initialization" << std::endl;
            return;
        }
        width = w;
        height = h;
        win = SDL_CreateWindow(name, x, y, w, h, 0);
        renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED);
        frame_texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STREAMING, w, h);
        frame_buffer = new FrameBuffer(w, h);
    }

    ~Window() {
        for(int i = 0; i < objects.size(); i++) {
            Object* o = objects[i];
            delete o;
        }
        delete frame_buffer;
        SDL_DestroyTexture(frame_texture);
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(win);
    }

    void draw(Object* o) {
        objects.push_back(o);
    }

    void display() {
        frame_buffer->clear();
        for(int i = 0; i < objects.size(); i++) {
            Object* o = objects[i];
            o->draw_to(frame_buffer);
        }

        SDL_UpdateTexture(frame_texture, NULL, frame_buffer->pixels, width * sizeof(uint32_t)); 
    }

    void update_objects(u32 dt) {
        for(int i = 0; i < objects.size(); i++) {
            Object* o = objects[i];
            f32 delta = (f32)dt;
            o->update(delta / 1000000);
        }
    }

    void run() {
        u32 physics_tick = 0;
        u32 animation_tick = 0;
        u32 prev = 0;
        u32 next = 0;
        u32 dt = 0;
        while(true) {
            SDL_Event e;
            if(SDL_PollEvent(&e) && e.type == SDL_QUIT) break;

            prev = next;
            next = SDL_GetPerformanceCounter();
            dt = next - prev;
            physics_tick += dt;
            animation_tick += dt;

            if(physics_tick > PHYSICS_REFRESH_INTERVAL) {
                // Update Physics here... 
                update_objects(physics_tick);
                physics_tick = 0;
            }

            if(animation_tick > ANIMATION_REFRESH_INTERVAL) {
                display();
                SDL_RenderClear(renderer);
                SDL_RenderCopy(renderer, frame_texture, NULL, NULL);
                SDL_RenderPresent(renderer);
                animation_tick = 0;
            }
        }
    }
};

struct RotatingLines : Object, Transform {

    Line l1;
    Line l2;

    f32 radius;
    f32 deg = 0.01;
    f32 iteration = 0;

    RotatingLines(f32 r) : l1(-r, 0, r, 0), l2(0, -r, 0, r), radius(r) {};

    virtual void handle_events(Event* e) {};
    
    virtual void update(f32 dt) {
        int x;
        int y;
        SDL_GetMouseState(&x, &y);

        dt = dt / 1000;
        Vec2f mouse_pos = Vec2f(x, y);
        set_translation(mouse_pos);
        rotate(dt);

        // Oscillate between 0.75 and 0.5 (-1 -> 1 becomes 0.5 -> 1.5)
        f32 s = (cos(iteration * PI / 180.f) / 2) + 1;
        set_scale(Vec2f(s, s));

        transform(&l1);
        transform(&l2);

        iteration += 1;
        if(iteration > 360) {
            iteration = 0;
        }
    }

    virtual void draw_to(FrameBuffer* fb) {
        l1.draw_to(fb);
        l2.draw_to(fb);
    }

};


int main(int argc, char** argv) {

    // Initialize randomness
    srand(time(NULL));
    

    const f32 SIZE = 2000;
    Window window("Hello World", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT );
    Camera camera(Vec2f(-SIZE, -SIZE), Vec2f(SIZE, SIZE));
    camera.rotate(45.0 / 180.0 * PI);

    RotatingLines* rl = new RotatingLines(SCREEN_WIDTH / 4);
    camera.transform(rl);

    for(int i = -1000; i <= 1000; i += 200) {
        Line* line = new Line(i, -1000, i, 1000);
        Line* line2 = new Line(-1000, i, 1000, i);
        camera.transform(line);
        camera.transform(line2);
        window.draw(line);
        window.draw(line2);
    }

    window.draw(rl);
    window.run();
    delete rl;

    return 0;

}
