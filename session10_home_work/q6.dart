/** Q6
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
 determine if the input string is valid.
 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the same type.
Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Valid */

class Solution {
  bool isValid(String s) {
    List<int> string = [];

    for (var char in s.split('')) {
      int code;

      switch (char) {
        case '(':
          code = -1;
          break;
        case ')':
          code = 1;
          break;
        case '[':
          code = -2;
          break;
        case ']':
          code = 2;
          break;
        case '{':
          code = -3;
          break;
        case '}':
          code = 3;
          break;
        default:
          return false;
      }
      if (code > 0) {
        if (string.isEmpty || (string.removeLast() + code) != 0) {
          return false;
        }
      } else {
        string.add(code);
      }
    }
    return string.isEmpty;
  }
}

void main() {
  var sol = Solution();

  print(sol.isValid('()'));
  print(sol.isValid('()[]{}'));
  print(sol.isValid('(]'));
  print(sol.isValid('([)]'));
  print(sol.isValid('{[]}'));
}
