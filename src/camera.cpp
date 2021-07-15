#include <camera.h>
#include <type_traits>


Camera::Camera(Vec2f position, Vec2f dimensions) {
    Vec2f screen_dim(SCREEN_WIDTH, SCREEN_HEIGHT);
    origin = position;
    set_translation(position);
    set_scale(screen_dim / (dimensions - position));
}

void Camera::translate(Vec2f translation) {
    Transform::translate(-translation);
}


void Camera::set_translation(Vec2f translation) {
    Transform::set_translation(-translation);
}

