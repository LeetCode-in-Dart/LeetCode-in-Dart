// #Medium #Top_Interview_Questions #Math #Udemy_Integers
// #2024_09_30_Time_340_ms_(99.50%)_Space_152.6_MB_(12.38%)

class Solution {
  int reverse(int x) {
    int number = x.abs();
    int reverseNumber = 0;
    final int maxValue = 0x7fffffff;
    while (number != 0) {
      reverseNumber = reverseNumber * 10 + number%10;
      number = (number/10).toInt();
    }
    if (reverseNumber > maxValue) {
      return 0;
    }
    return x > 0 ? reverseNumber : -reverseNumber;
  }
}
