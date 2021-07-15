#include <transform.h>

void Transform::recalculate_mats() {
    Mat3f tm = translation_matrix(translation);
    Mat3f rm = rotation_matrix(origin, rotation);
    Mat3f sm = scale_matrix(origin, scales);
    this->local_mat = tm * rm * sm;
}

void Transform::translate(Vec2f translation) {
    Mat3f tm = translation_matrix(translation);
    this->translation = this->translation + translation;
    this->local_mat = tm * this->local_mat;
}

void Transform::rotate(f32 rad) {
    Mat3f rm = rotation_matrix(origin + translation, rad);
    this->rotation = fmod(this->rotation + rad, 2 * PI);
    this->local_mat = rm * this->local_mat;
}

void Transform::scale(Vec2f scale) {
    Mat3f sm = scale_matrix(origin + translation, scale);
    this->scales = this->scales * scale;
    this->local_mat = sm * this->local_mat;
};

void Transform::set_translation(Vec2f translation) {
    this->translation = translation;
    recalculate_mats();
}

void Transform::set_rotation(f32 rotation) {
    this->rotation = fmod(rotation,  2 * PI);
    recalculate_mats();
}

void Transform::set_scale(Vec2f scale) {
    this->scales = scale;
    recalculate_mats();
}

Vec2f Transform::transform(Vec2f point) {
    return this->global_mat * this->local_mat * point;
}

void Transform::transform(Transform* transformer) {
    transformer->global_mat = this->global_mat * this->local_mat;
}
