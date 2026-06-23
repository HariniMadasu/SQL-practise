class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x<0:
            return False
        original = x
        rev = 0
        temp = x
        while temp>0:
            digit = temp%10
            rev = rev*10 + digit
            temp = temp // 10

        return original == rev
        

        