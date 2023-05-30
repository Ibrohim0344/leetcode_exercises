import 'dart:math';

bool isPalindrome(int x) {
  bool ans = true;
  if (!(x.isNegative)) {
    String s = x.toString();
    for (var i = 0; i < s.length ~/ 2; i++) {
      if (s[i] != s[s.length - i - 1]) {
        ans = false;
        break;
      }
    }
  } else {
    ans = false;
  }
  return ans;
}

String longestCommonPrefix(List<String> strs) {
  String answer = "";
  Set<String> result = {};
  final List<int> list = strs.map((e) => e.length).toList()..sort();
  for (var i = 0; i < list[0]; i++) {
    for (var j = 0; j < strs.length; j++) {
      result.add(strs[j][i]);
    }
    if (result.length == 1) {
      answer += result.elementAt(0);
    } else {
      break;
    }
    result.clear();
  }
  return answer;
}

bool isValid(String s) {
  for (var i = 0; i < s.length; i++) {
    if (s[i] == "(" && s[i + 1] == ")") {
      return true;
    } else if (s[i] == "[" && s[i + 1] == "]") {
      return true;
    } else if (s[i] == "{" && s[i + 1] == "}") {
      return true;
    }
  }
  return false;
}

int nextBigNum(int number) {
  Set<int> setNum =
      number.toString().split("").map((e) => int.parse(e)).toSet();
  print(setNum);

  if (setNum.length == 1) return -1;

  return 0;
}

void main(List<String> args) {
  print(longestCommonPrefix(['flight', 'fliz', 'flizjnc', 'fliz']));
  print(nextBigNum(2017));
}

class Solution {
  int mySqrt(int x) {
    return sqrt(x).floor();
  }
}
