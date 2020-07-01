/// Translated from C to D
module main;

extern(C): @nogc: nothrow:

private template HasVersion(string versionId) {
	mixin("version("~versionId~") {enum HasVersion = true;} else {enum HasVersion = false;}");
}
public import core.stdc.assert_;
public import core.stdc.string;
public import core.stdc.stdio;

public import ...include.glfw;

version = TEST
enum PI = 3.14159265;
auto SQR(x){return (x*x);}

version (TEST) {
// whoo
} else {
// whoo
}

static if (0) {
// whoo
} else static if (HasVersion!"TEST") {
// whoo
}

static if (HasVersion!"Windows") {
	enum CUTE_TIME_PLATFORM = CUTE_TIME_WINDOWS;
} else static if (HasVersion!"OSX") {
	enum CUTE_TIME_PLATFORM = CUTE_TIME_MAC;
} else {
	enum CUTE_TIME_PLATFORM = CUTE_TIME_UNIX;
}

struct S {
	int in_;
	int out_;
}

union U {
	char x;
}

alias struct S S;

alias struct T {
	S* ptr;
} T;

uint x0;
int x1;
uint x2;
long x3;
ulong x4;
uint x5;
float x6;
double x7;
real x8;
S x9;
S xA;

const(char)* p0;
const(char)* p1;
char* p2;

int[1] a0;
int*[2] a1;
int[3]* a2;
int[5][4] a3;
int*[7][6] a4;
int*[9][8]* a5;
int**[9][8] a6;

void function(int x, float, char*, char*, char*) f;
void[5] function()[4] f;

pragma(inline, true) extern int e0;

static float[8] x = [0.5, 2.5];
double[3][4] z;

int main() {
	static int xx;
	static int x = cast(int) 3.5;
	int so0 = short.sizeof;
	int so1 = int.sizeof;
	int so2 = typeof(4).sizeof;
	int so2 = typeof((4)).sizeof;
	int so3 = typeof((cast(short) 3 + 4L)).sizeof;
	int[2] a;
	foo(a, main);
	return 0;
}

void foo(int* x;, int function() y;) {
	int* z;int y;
}