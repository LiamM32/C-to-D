module main;
@nogc nothrow:
extern(C): __gshared:
public import core.stdc.stdio;
public import functions;

int[4] x = [1, 2, 3, 4];

void main() {
    printf("The following line should have \'Hello\' 6 times.\n");
    for(int i = 0; i<add(2, 4); i++) {
        printf("Hello, ");
    }
    printf("\n");
}