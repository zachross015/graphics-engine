#include "../includes/camera.h"


Camera::Camera(Vec2f position, Vec2f dimensions) {
    Vec2f screen_dim(SCREEN_WIDTH, SCREEN_HEIGHT);
    Vec2f scaled = screen_dim / (dimensions - position);
    origin = (position + dimensions) / 2;
    set_translation(position * scaled);
    set_scale(scaled);
}


void Camera::translate(Vec2f translation) {
    Transform::translate(-translation);
}


void Camera::set_translation(Vec2f translation) {
    Transform::set_translation(-translation);
}

