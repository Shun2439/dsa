#include <iostream>
#include <stdlib.h>

using namespace std;

int main() {
  int p, q, x, y;

  cin >> p >> q;
  cin >> x >> y;

  cout << (x >= p && x < p + 100 && y >= q && y < q + 100 ? "Yes" : "No") << '\n';
}
