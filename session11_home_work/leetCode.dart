/**Given a non-empty array of integers nums, every element appears twice except for one.
 *  Find that single one.
  You must implement a solution with a linear runtime complexity and use only constant extra space */

int singleNumber(List<int> nums) {
  Set<int> seen = {};
  for (int num in nums) {
    if (seen.contains(num)) {
      seen.remove(num);
    } else {
      seen.add(num);
    }
  }
  return seen.first;
}

void main() {
  print(singleNumber([2, 2, 1]));       
  print(singleNumber([4, 1, 2, 1, 2])); 
  print(singleNumber([1]));
}
