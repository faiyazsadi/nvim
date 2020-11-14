#include <bits/stdc++.h>

using namespace std;

#define fi first
#define se second

template<typename A, typename B>
ostream& operator << (ostream& output, const pair<A, B>& p) {
    output << "(" << p.first << ", " << p.second << ")";
    return output;
}

template<typename A, typename B>
ostream& operator << (ostream& output, const map<A, B>& m) {
    for(auto it = m.begin(); it != m.end(); ++it) {
        output << "[" << it->first << ", " << it->second << "]" << endl;
    }
    return output;
}

template<typename A>
ostream& operator << (ostream& output, const vector<A>& a) {
    output << "[";
    for(auto it = a.begin(); it != a.end(); ++it) {
        if(it != a.begin()) {
            output << ", ";
        }
        output << *it;
    }
    output << "]";
    return output;
}

#ifdef LOCAL
template<typename Tc, typename... Ta>
void print(Tc T, Ta... A) {
    cerr << T << endl;
    if constexpr (sizeof...(A) > 0) print(A...);
}
#else
    #define print(Tc, Ta...)
#endif


void solve() {
}


int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int T = 1;
    cin >> T;
    while(T--) {
        solve();
    }
    return 0;
}