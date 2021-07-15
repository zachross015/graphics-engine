#ifndef MATH_H
#define MATH_H

#include "constants.h"
#include <cmath>

// Computational vectors with two dimensions. When transformed by a Mat3<T>,
// this is essentially as three dimensional vector with the third component
// being the value 1.
template <typename T>
struct Vec2 {


    // X and Y vector components
    T x;
    T y;


    /****************/
    /* Initializers */
    /****************/


    /** Explicit Vector constructor. 
     *
     * @param {T} x The x coordinate of the vector 
     * @param {T} y The y coordinate of the vector
     */
    Vec2(T x, T y) {
        this->x = x;
        this->y = y;
    };


    /** Default vector constructor. Sets both the x and y coordinates to 0.
     */
    Vec2() : Vec2(0, 0) {};


    /** Copy constructor. Sets both the x and y coordinates to  the value of the
     *  passed vector.
     *
     *  @param {const Vec2<T>&} v The vector to copy into this one.
     */
    Vec2(const Vec2<T>& v) {
        this->x = v.x;
        this->y = v.y;
    };


    /**********************/
    /* OPERATOR OVERLOADS */
    /**********************/


    Vec2 operator+(const Vec2<T>& v) {
        return { x + v.x, y + v.y };
    };


    Vec2 operator-(const Vec2<T>& v) {
        return { x - v.x, y - v.y };
    };
    

    Vec2 operator*(const Vec2<T>& v) {
        return { x * v.x, y * v.y };
    };


    Vec2 operator/(const Vec2<T>& v) {
        return { x / v.x, y / v.y };
    };


    Vec2 operator+(const T& v) {
        return { x + v, y + v };
    };


    Vec2 operator-(const T& v) {
        return { x - v, y - v };
    };
    

    Vec2 operator*(const T& v) {
        return { x * v, y * v };
    };


    Vec2 operator/(const T& v) {
        return { x / v, y / v };
    };


    Vec2 operator-() {
        return Vec2<T>(-x, -y);
    };


    template <typename U>
    operator Vec2<U>() {
        return { (U)x, (U)y };
    };


    /*****************************/
    /* TEMPLATE MEMBER FUNCTIONS */
    /*****************************/


};


// Computational Matrices with two dimensions
template <typename T>
struct Mat3 {


    // Entries of the matrix, with each entry i, j given by 3i + j
    T entries[9];


    /****************/
    /* Initializers */
    /****************/


    /** Default initializer, identity 3x3 matrix.
     */
    Mat3() {
        for(int i = 0; i < 9; i++) {
            entries[i] = (i % 4 == 0);
        }
    };


    /** Explicit initializer, 3x3 matrix with each entry given by the parameters.
     *
     * @param {T} mij The entry for the ith row and jth column.
     */
    Mat3(T m11, T m12, T m13, T m21, T m22, T m23, T m31, T m32, T m33) {
        entries[0] = m11;
        entries[1] = m12;
        entries[2] = m13;
        entries[3] = m21;
        entries[4] = m22;
        entries[5] = m23;
        entries[6] = m31;
        entries[7] = m32;
        entries[8] = m33;
    };


    /** Explicit initializer, 3x3 matrix with each entry given by the parameters.
     *
     * @param {[T]} m The array for the matrix where each entry given by 3i + j
     *                is the ith row and jth column. 
     */
    Mat3(T m[9]) {
        for(int i = 0; i < 9; i++) {
            entries[i] = m[i];
        }
    };


    /** Application of this matrix on a 2 dimensional vector. For all intensive
     * purposes, we use Vec2<T> as a three dimensional vector so that the last
     * row is just the value one (i.e. [x y 1]). This allows us to make use of
     * all the matrix/vector multiplication practices without the drawbacks of
     * the vector operations that constantly happen.
     *
     * Previous iterations of the vector operations show that vector operations
     * involving z are repeatedly an issue when only working with two
     * dimensions. This structure alleviates that issue. I know it looks weird
     * having a 3x3 vector multiply a 2x1 vector, but I'm in charge of this ship
     * so fuck you.
     *
     * @param  {const Vec<T>&} v The two dimensionsl vector to be transformed 
     *                           by this matrix
     * @return {Vec2<T>}         The transformed vector with 1 used in place of
     *                           z
     */
    Vec2<T> operator*(const Vec2<T>& v) {
        return Vec2<T>(
                (entries[0] * v.x) + (entries[1] * v.y) + (entries[2] * 1), 
                (entries[3] * v.x) + (entries[4] * v.y) + (entries[5] * 1)
                );
    };


    /**********************/
    /* OPERATOR OVERLOADS */
    /**********************/


    Mat3<T> operator*(const Mat3<T>& b) {
        T c[9];

        for(int i = 0; i < 3; i++) {
            for(int j = 0; j < 3; j++) {
                c[(i * 3) + j] = 0;
                for(int k = 0; k < 3; k++) {
                    c[(i * 3) + j] += entries[(i * 3) + k] * b.entries[(k * 3) + j];
                }
            }
        }

        return Mat3(c);
    }


};


/****************/
/* COMMON TYPES */
/****************/


typedef Vec2<f32> Vec2f;
typedef Vec2<i32> Vec2i;
typedef Vec2<u32> Vec2u;
typedef Mat3<f32> Mat3f;


/*********************/
/* RELATED FUNCTIONS */
/*********************/


/** Dot product of two two-dimensional vectors.
 *
 * @param  {const Vec2<T>&} v1 The first vector in the dot product
 * @param  {const Vec2<T>&} v2 The second vector in the dot product
 * @return {T}                 The dot product of the first and second vector
 */
template <typename T>
T dot(const Vec2<T>& v1, const Vec2<T>& v2);

/** Produces a translation matrix for the given vector translation. This is a
 * matrix of the form 
 *
 * | 1 0 x |
 * | 0 1 y |
 * | 0 0 1 |
 *
 * TODO: Generalize this? Might not be necessary 
 *
 * @param  {Vec2f} translation The vector consisting of the translations to be
 *                             converted into matrix form
 * @return {Mat3f}             A matrix in the aformentioned format. 
 */
Mat3f translation_matrix(Vec2f translation);


/** Produces a rotation matrix for the given origin and a rotation in radians. Let t be
 * the angle in radians given. This is a matrix of the form 
 *
 * | xcos(t) -ysin(t) 0 |
 * | xsin(t)  ycos(t) 0 |
 * | 0        0       1 |
 *
 * TODO: Generalize this? Might not be necessary 
 *
 * @param  {Vec2f} origin The coordinates that the rotation is occuring around.
 * @param  {f32}   rad    The angle in radians for the rotation to take place
 *                        around. 
 * @return {Mat3f}        A matrix in the aformentioned format. 
 */
Mat3f rotation_matrix(Vec2f origin, f32 rad);


/** Produces a scaling matrix for the given origin and a scale. This is a matrix 
 * of the form 
 *
 * | x 0 0 |
 * | 0 y 0 |
 * | 0 0 1 |
 *
 * TODO: Generalize this? Might not be necessary 
 *
 * @param  {Vec2f} origin The coordinates that the scaling is occuring from.
 * @param  {Vec2f} scale  The amount of scaling to take place in each direction.
 * @return {Mat3f}        A matrix in the aformentioned format. 
 */
Mat3f scale_matrix(Vec2f origin, Vec2f scale);

#endif
