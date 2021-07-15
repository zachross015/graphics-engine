#ifndef CAMERA_H
#define CAMERA_H

#include "object.h" 
#include "transform.h"
#include "math.h"
#include <vector>

/// Structure for a camera which views content. Acts primarily as a transformer
/// to be encapsulated by some Scene and to be transformed by a parent
/// structure.
struct Camera : Transform {

    private:

        // TODO: These are just temporary additions to the camera object. Later
        // on, these should be controlled by a Scene instead (with a scene
        // having one main camera).  TODO: Make these into linked lists? Might
        // make removal simpler.  The drawings at the very least should be a PQ
        std::vector<Object*> objects;
        std::vector<Transform*> transforms;

    public:


        /****************/
        /* Initializers */
        /****************/


        /** Default initializer for the camera. Sets the position as its origin
         * (0,0) and uses the dimensions to create a virtual viewport which fits
         * in the window by scaling everything to the proper dimensions.
         *
         * @param {Vec2f} p1 The coordinates which the top-left corner of the 
         *                   window should view from
         * @param {Vec2f} p2 The coordinates which the bottom-right corner of 
         *                   the window should view from
         */
        Camera(Vec2f p1, Vec2f p2);


        /*************************/
        /* POLYMORPHIC OVERRIDES */
        /*************************/


        /** Translates the window by a given amount. This is done in reverse
         * from the original implementation due to the camera placement. I.e.,
         * when the camera moves left, everything else moves right.
         *
         * @param {Vec2f} translation The vector consisting of the direction and
         *                            magnitude for the camera to move
         */
        virtual void translate(Vec2f translation);


        /** Translates the window To the given position. This is done in reverse
         * from the original implementation due to the camera placement. I.e.,
         * when the camera moves left, everything else moves right.
         *
         * @param {Vec2f} translation The vector consisting of the place the
         *                            camera top-coordinate that the camera 
         *                            should be positioned.
         */
        virtual void set_translation(Vec2f translation);


        // TODO: These are just temporary additions to the camera object. Later
        // on, these should be controlled by a Scene instead (with a scene
        // having one main camera).
        void add(Object* obj);
        void remove(Object* obj);

};


#endif
