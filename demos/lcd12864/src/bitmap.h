#ifndef BITMAP_H
#define BITMAP_H

#define BITMAP_BYTES_PER_LINE 16
#define BITMAP_LINES 64

#define BITMAP_DATA \
 0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x07,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x0f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x1c,0x60,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x1c,0x70,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x1e,0x30,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x1a,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x0e,0x00,0x1b,0x1c,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x3f,0x00,0x1a,0x8c,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x33,0x80,0x12,0x0c,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x39,0x80,0x32,0x46,0x00,0x00,0x0f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x78,0xc0,0x19,0x06,0x00,0x00,0x1f,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x64,0xe0,0x19,0x03,0x00,0x00,0x38,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x64,0x60,0x18,0x83,0x00,0x00,0x30,0x70,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x66,0x30,0x0c,0xe1,0x80,0x00,0x30,0x70,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x66,0x30,0x0c,0x61,0xc0,0x00,0x38,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x65,0x18,0x0c,0x20,0xe0,0x00,0x1c,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x65,0x19,0xfe,0x60,0x70,0x01,0xff,0xc0,0x07,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x61,0x0f,0xf9,0x80,0x38,0x03,0xff,0xc0,0x07,0xc0,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x62,0x8f,0x06,0x00,0x18,0x03,0x83,0x80,0x03,0xf0,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x62,0x84,0xd8,0x00,0x1c,0x00,0x03,0x80,0x03,0xf8,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x31,0x85,0x00,0x00,0x0c,0x00,0x07,0x00,0x07,0x1e,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x31,0xc2,0x00,0x00,0x06,0x00,0x07,0x00,0x06,0x0f,0x80,0x00,0x00,0x00,0x00,0x00 \
,0x18,0x40,0x00,0x00,0x06,0x00,0x02,0x00,0x0e,0x03,0xc0,0x00,0x00,0x00,0x00,0x00 \
,0x18,0x40,0x00,0x00,0x03,0x00,0x00,0x00,0x0c,0x07,0xc0,0x00,0x00,0x00,0x00,0x00 \
,0x0c,0x40,0x00,0x00,0x03,0x00,0x00,0x00,0x1c,0x06,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x0e,0x40,0x00,0x00,0x01,0x80,0x00,0x00,0x18,0x0e,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x07,0xc0,0x00,0x00,0x01,0x80,0x00,0x00,0x38,0x0c,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x06,0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x70,0x1c,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x06,0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x70,0x18,0x00,0xe0,0x00,0x00,0x00,0x00 \
,0x06,0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x00,0x38,0x03,0xe0,0x00,0x00,0x00,0x00 \
,0x06,0x00,0x00,0x00,0x01,0x80,0x00,0x00,0x00,0x30,0x0f,0xe1,0x80,0x00,0x00,0x00 \
,0x02,0x20,0x00,0x00,0x01,0x80,0x00,0x00,0x00,0x70,0x3e,0xc1,0x80,0x00,0x00,0x00 \
,0x03,0x00,0x00,0x00,0x01,0xc0,0x00,0x00,0x00,0x70,0x79,0xc3,0x80,0x00,0x00,0x00 \
,0x03,0x50,0x00,0x00,0x01,0xc0,0x00,0x00,0x00,0x01,0xfd,0xc3,0x04,0x00,0x00,0x00 \
,0x03,0x18,0x00,0x00,0x00,0xe0,0x00,0x00,0x00,0x03,0xcf,0x87,0x1f,0x00,0x00,0x00 \
,0x03,0x08,0x00,0x00,0x00,0x70,0x00,0x00,0x00,0x03,0x83,0x87,0xfe,0x30,0x00,0x00 \
,0x01,0x88,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x03,0x8f,0xf0,0x7e,0x00,0x00 \
,0x01,0x88,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x03,0x8f,0xc0,0x7f,0x80,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x03,0x1c,0xc0,0xe3,0xc0,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x03,0x18,0xc0,0xc1,0xe0,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x00,0x38,0xe1,0xc0,0x78,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x30,0x00,0x00,0x00,0x00,0x00,0x30,0xe3,0xf0,0x3c,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x38,0x00,0x00,0x00,0x00,0x00,0x00,0x63,0xfc,0x0f,0x00 \
,0x00,0xc0,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x67,0x3e,0x07,0xc0 \
,0x00,0xc0,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x66,0x06,0x07,0xf0 \
,0x00,0x48,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x46,0x00,0x06,0x78 \
,0x00,0x4a,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x06,0x00,0x0e,0x18 \
,0x00,0x6a,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x80,0x0e,0x00 \
,0x00,0x69,0x00,0x00,0x00,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0xe0,0x0c,0x00 \
,0x00,0x69,0x00,0x00,0x00,0x38,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x1c,0x00 \
,0x00,0x64,0x80,0x00,0x00,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x18,0x00 \
,0x00,0x64,0x80,0x00,0x0f,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x38,0x00 \
,0x00,0x72,0x00,0x01,0xff,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x00 \
,0x00,0x33,0x00,0x07,0xfc,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x00 \
,0x00,0x3b,0x00,0x1f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x1b,0x00,0x3c,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x1c,0x00,0xf8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x0e,0x43,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x06,0x7f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x07,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x03,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x01,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 \
,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

#endif //BITMAP_H
