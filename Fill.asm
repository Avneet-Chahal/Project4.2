// KEYBOARD > 0? FILL : CLEAR
(LOOP)
    // Get keyboard value.
    @KBD
    D=M
    // Jump to on if it's more than 0.
    @ON
    D;JGT
    // Jump to off otherwise.
    @OFF
    0;JMP
// Turn the screen on and loop.
(ON)
    // Set the draw value to -1 (1111111111111111).
    @R0
    M=-1
    // Draw.
    @DRAW
    0;JMP
// Turn the screen off and loop.
(OFF)
    // Set the draw value to 0 (0000000000000000).
    @R0
    M=0
    // Draw.
    @DRAW
    0;JMP
// Set the screen to R0 and loop.
(DRAW)
    // Set the counter (R1) to 8192 (this is how many bits we need to do).
    // We will keep counting down with this as we draw.
    @8191
    D=A
    @R1
    M=D
    // Walk the screen and set th
