# Compression

Assets are compressed using a mix of RLE-like and LZ-like compression

## Commands

The first byte in a packet is the command, and it has this format: `aaab bbbb`. If `$FF` stop.

- `aaa` is the command, between 0 and 7.
- `bbbbb` is the number of bytes that will end up in the decompressed array (except command 7).

### 0

Reads the next `bbbbb` bytes then copies them to the decompressed array.

Input: `05 15 df 8d 6a 22` \
Output: `15 df 8d 6a 22`

### 1

Reads 1 byte then copies it `bbbbb` times to the decompressed array.

Input: `25 15` \
Output: `15 15 15 15 15`

### 2

Reads 2 bytes then copies them alternatively until `bbbbb` bytes have been copied.

Input: `65 15 42` \
Output: `15 42 15 42 15`

### 3

Reads 1 byte then copies that byte `bbbbb` times, incrementing it each time.

Input: `85 15` \
Output: `15 16 17 18 19`

### 4

Reads 2 bytes as a 16-bit little-endian offset. Copies `bbbbb` bytes starting that `offset` inside the decompressed array.

### 5

Identical to 4, except it `xor $FF` bytes before adding them to the decompressed array.

### 6

Reads 1 byte, then copies `bbbbbb` bytes starting reading that much back from the current position in the decompressed array.

### 7

The other commands can only have a count of 31. This one extends them up to 1023.
This command is as `111a aabb`, and reads the following byte `c` to get the lower 8 bits of the count.

- `aaa` is the command (between 0 and 6).
- `bb << 8 + c` is the number of bytes that will end up in the decompressed array.
