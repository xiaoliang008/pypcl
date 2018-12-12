from libcpp cimport bool

cdef extern from "boost/shared_ptr.hpp" namespace "boost" nogil:
    cdef cppclass shared_ptr[T]:
        shared_ptr()
        shared_ptr(T*)
        shared_ptr(shared_ptr[T]&)
        shared_ptr(shared_ptr[T]&, T*)
        
        # Modifiers
        void reset()
        void reset(T*)
        void swap(shared_ptr&)

        # Observers
        T* get()
        T& operator*()
        bool unique()
        long use_count()
        bool operator bool()
        bool operator!()

        bool operator==(const shared_ptr&)
        bool operator!=(const shared_ptr&)