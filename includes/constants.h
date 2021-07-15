#ifndef CONSTANTS_H
#define CONSTANTS_H

#define i32 int32_t
#define u32 uint32_t
#define f32 float

#include <cstdint>

const float PI = 3.14159265;

const i32 SCREEN_HEIGHT = 800;
const i32 SCREEN_WIDTH = 800;

const u32 WHITE_COLOR = 0x00ffffff;
const u32 BLACK_COLOR = 0;

const u32 PHYSICS_REFRESH_INTERVAL = 1000 / 15;
const u32 ANIMATION_REFRESH_INTERVAL = 1000 / 144;
const u32 INTERPOLATION = PHYSICS_REFRESH_INTERVAL / ANIMATION_REFRESH_INTERVAL;

#endif
