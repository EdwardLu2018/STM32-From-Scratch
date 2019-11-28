// page 171
typedef struct {
    unsigned volatile long cr[2]; // port configuration register (low/high)
    unsigned volatile long idr; // input data register
    unsigned volatile long odr; // output data register
    unsigned volatile long bsrr; // bit set reset register
    unsigned volatile long brr; // bit reset register
    unsigned volatile long lckr; // port configuration lock register
} gpio;
