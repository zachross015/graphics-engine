#ifndef TRANSFORM_H
#define TRANSFORM_H

#include "math.h"

struct Transform {

    private:
        Mat3f local_mat;
        Mat3f global_mat;
        void recalculate_mats();

    protected:
        Vec2f translation;
        f32   rotation;
        Vec2f scales;
        Vec2f origin;

    public:

        Transform() : translation(0, 0), rotation(0), scales(1, 1), origin(0, 0) {};

        virtual void translate(Vec2f translation);
        virtual void rotate(f32 rad);
        virtual void scale(Vec2f scale);

        virtual void set_translation(Vec2f translation);
        virtual void set_rotation(f32 rotation);
        virtual void set_scale(Vec2f scale);

        Vec2f transform(Vec2f point);
        void transform(Transform* transformer);
};

#endif
