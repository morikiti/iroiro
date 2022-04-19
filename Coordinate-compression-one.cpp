#include <iostream>
#include <vector>
#include <algorithm>

template<typename T>
std::vector<T> compress(std::vector<T> &x) { 
    std::vector<T> array = x;
    std::sort(array.begin(),array.end());
    //uniqueで、重複を削除　eraseで残るゴミを削除
    array.erase(std::unique(array.begin(),array.end()),array.end());
    //
    for(int i = 0; i < (int)x.size(); ++i) { 
        //lowerbowndは、配列内でx[i]が何番目に出るかを出力
        x[i] = std::lower_bound(array.begin(),array.end(),x[i]) - array.begin();
    }
    return array;
}

int main() { 
    std::vector<int> a = {1, 10, 5, 32, 99, 8, 10};
    std::vector<int> b = compress(a);

    for(auto aa : b) { 
        std::cout << aa << std::endl;
    }
    for(auto aa: a) { 
        std::cout << aa << std::endl;
    }
    return 0;
}