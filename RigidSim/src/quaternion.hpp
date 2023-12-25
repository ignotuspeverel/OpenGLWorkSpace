#ifndef _QUATERNION_HPP_
#define _QUATERNION_HPP_

#include "typedefs.hpp"
#include "Vector3.hpp"
#include "Matrix3x3.hpp"
#include <cmath>

template <typename T>
class Quaternion 
{
public:
    T w, x, y, z;

    Quaternion() : w(1), x(0), y(0), z(0) {}

    Quaternion(const T &w, const T &x, const T &y, const T &z) : w(w), x(x), y(y), z(z) {}

    Quaternion(const T &w, const Vector3<T> &v) : w(w), x(v.x), y(v.y), z(v.z) {}

    Quaternion &operator=(const Quaternion &q)
    {
        w = q.w;
        x = q.x;
        y = q.y;
        z = q.z;
        return *this;
    }

    Quaternion operator*(const T &s) const
    {
        return Quaternion(w * s, x * s, y * s, z * s);
    }

    Quaternion &operator+=(const Quaternion &q)
    {
        w += q.w;
        x += q.x;
        y += q.y;
        z += q.z;
        return *this;
    }

    Quaternion &operator-=(const Quaternion &q)
    {
        w -= q.w;
        x -= q.x;
        y -= q.y;
        z -= q.z;
        return *this;
    }

    Quaternion &operator*=(const Quaternion &q)
    {
        w = w * q.w - x * q.x - y * q.y - z * q.z;
        x = w * q.x + x * q.w + y * q.z - z * q.y;
        y = w * q.y - x * q.z + y * q.w + z * q.x;
        z = w * q.z + x * q.y - y * q.x + z * q.w;
        return *this;
    }

    Quaternion operator*(const Quaternion &q) const
    {
        return Quaternion(*this) *= q;
    }

    Quaternion operator+(const Quaternion &q) const
    {
        return Quaternion(*this) += q;
    }

    Mat3f toRotMat() const
    {
        return Mat3f(
            1 - 2 * (y * y + z * z),  2 * (x * y - w * z),      2 * (x * z + w * y),
            2 * (x * y + w * z),      1 - 2 * (x * x + z * z),  2 * (y * z - w * x),
            2 * (x * z - w * y),      2 * (y * z + w * x),      1 - 2 * (x * x + y * y));
    }

    Quaternion &normalize()
    {
        T len = std::sqrt(w * w + x * x + y * y + z * z);
        w /= len;
        x /= len;
        y /= len;
        z /= len;
        return *this;
    }
};

typedef Quaternion<tReal> Quaternionf;

inline Quaternion<tReal> operator*(const tReal &s, const Quaternion<tReal> &q) { return q * s; };

#endif  /* _QUATERNION_H_ */
