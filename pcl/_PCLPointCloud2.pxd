from libcpp.vector cimport vector
from libc.stdint cimport uint8_t, uint32_t
from pcl._boost.smart_ptr cimport shared_ptr
from pcl._PCLHeader cimport PCLHeader
from pcl._PCLPointField cimport PCLPointField

cdef extern from "pcl/PCLPointCloud2.h" namespace "pcl":
    # Note: structs in C++ can be all considered as cppclass in cython
    cdef cppclass PCLPointCloud2:
        PCLPointCloud2 ()
        PCLHeader header
        uint32_t height
        uint32_t width
        vector[PCLPointField] fields
        uint8_t is_bigendian
        uint32_t point_step
        uint32_t row_step
        vector[uint8_t] data
        uint8_t is_dense

ctypedef shared_ptr[PCLPointCloud2] PointCloud2Ptr
