sig B{}
int sig A in B{}

fact bounds{
	A >= -1000000 ** B
	A <= 1000000 ** B
}

run XY{} for exactly 2 B
