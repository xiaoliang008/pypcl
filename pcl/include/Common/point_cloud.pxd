from libc.stdint cimport uint32_t
from libcpp cimport bool

cdef extern from "pcl/point_cloud.h" namespace "pcl":
    cdef cppclass PointCloud[PointT]:
        PointCloud()
        PointCloud(uint32_t width, uint32_t height, const PointT& value)

        PointT& at(int column, int row)
        PointT& operator()(int column, int row)
        bool isOrganized()

        size_t size()
        void reserve(size_t n)
        bool empty()
        void resize(size_t n)

        PointT& operator[](size_t n)
        PointT& at(size_t n)
        PointT& front()
        PointT& back()

        void push_back(const PointT& pt)
