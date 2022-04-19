#include <iostream>
#include <vector>
#include <algorithm>

template<typename T>
std::vector<T> compress(std::vector<T> &x1,std::vector<T> &x2) { 
    std::vector<T> array;
    int n = (int)array.size();
    for(int i = 0; i < n; ++i) { 
        for(T d = 0; d < 1; ++d) { 
            T tc1 = x1[i] + d;
            T tc2 = x2[i] + d;
            array.push_back(tc1);
            array.push_back(tc2);
        }
    }
    std::sort(array.begin(),array.end());
    //sort()
    array.erase(std::unique(array.begin(),array.end()) ,array.end());
    for(int i = 0; i < n; ++i) { 
        x1[i] = std::lower_bound(array.begin(),array.end(),x1[i]) - array.begin();
        x2[i] = std::lower_bound(array.begin(),array.end(),x2[i]) - array.begin();
    }
    return array;
}

int main() { 
    return 0;
}