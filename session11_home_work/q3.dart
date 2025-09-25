/**
Q3
Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.
- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.
Examples:
- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.
- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1 */

int search(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (nums[mid] == target) {
      return mid;
    }
    if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

void main() {
  print(search([-1, 0, 3, 5, 9, 12], 9));
  print(search([-1, 0, 3, 5, 9, 12], 2));
}
