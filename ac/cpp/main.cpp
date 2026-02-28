#/*

g++ -Wall "$0" -o /tmp/a.out && exec /tmp/a.out "$@"

*/

#include <iostream>
#include <atcoder/dsu>
#include <stdlib.h>

using namespace std;

int main() {
    atcoder::dsu d(10);
    d.merge(0, 1);
    cout << d.same(0, 1) << '\n';
    return EXIT_SUCCESS;
}
