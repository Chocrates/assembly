        .text
LC0:
        .ascii  "Hello, world!\12\0"
.globl  _start
_start:
        pushl   %ebp
        movl    %esp, %ebp
        subl    $8, %esp
        andl    $-16, %esp
        movl    $0, %eax
        movl    %eax, -4(%ebp)
        call    alloca
        call    _start
        movl    $LC0, (%esp)
        call    printf
        movl    $0, %eax
        leave
