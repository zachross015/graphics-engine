#include "../includes/math.h"


// VEC3


template <typename T>
T dot(const Vec2<T>& v1, const Vec2<T>& v2) {
    return (v1.x * v2.x) + (v1.y * v2.y) + (v1.z * v2.z);
};


// MAT3


Mat3f translation_matrix(Vec2f translation) {
    return Mat3f(1, 0, translation.x, 0, 1, translation.y, 0, 0, 1);
}


Mat3f rotation_matrix(Vec2f origin, f32 rad) {
    f32 c = cos(rad);
    f32 s = sin(rad);
    Mat3f mat = Mat3f(c, -s, 0, s, c, 0, 0, 0, 1);
    return translation_matrix(origin) * mat * translation_matrix(-origin); 
}


Mat3f scale_matrix(Vec2f origin, Vec2f scale) {
    Mat3f mat = Mat3f(scale.x, 0, 0, 0, scale.y, 0, 0, 0, 1);
    return translation_matrix(origin) * mat * translation_matrix(-origin); 
}
