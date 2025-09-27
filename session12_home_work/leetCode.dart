 class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? current = head;

    while (current != null) {
      ListNode? next = current.next; 
      current.next = prev;         
      prev = current;                
      current = next;               
    }

    return prev; 
  }
}
void main() {
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  Solution s = Solution();
  ListNode? reversed = s.reverseList(head);

  while (reversed != null) {
    print(reversed.val);
    reversed = reversed.next;
  }
}
