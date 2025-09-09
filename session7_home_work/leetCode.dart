class Solution {
  bool isPalindrome(String s) {
    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      while (left < right && !_isAlphaNumeric(s[left])) {
        left++;
      }
      while (left < right && !_isAlphaNumeric(s[right])) {
        right--;
      }

      if (s[left].toLowerCase() != s[right].toLowerCase()) {
        return false;
      }

      left++;
      right--;
    }

    return true;
  }

  bool _isAlphaNumeric(String ch) {
    return RegExp(r'^[a-zA-Z0-9]$').hasMatch(ch);
  }
}

void main() {
  var sol = Solution();

  print(sol.isPalindrome("A man, a plan, a canal: Panama")); 
  print(sol.isPalindrome("race a car")); 
  print(sol.isPalindrome(" ")); 
}