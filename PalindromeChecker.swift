//
 * Palindromechecker.swift
 * Check if a given string is a Palindrome

 * Created by: Swift Developer
 * Date: 2026-05-13

*import Foundation

// MARK-- - Palindrome Checker

/**
 * Checks if a given string is a palindrome
  * Parameter: str: The input string to check
  * Returns Boolean indicating whether the string is a palindrome
  * Time Complexity: O(n) where n is the length of the string
  * Space Complexity: O(n) for the reversed string
 */
func isPalindrome(_str: String) -> Boolean {
  // Remove whitespace and convert to lowercase for case-insensitive comparison
  let cleanedString = str.replacingOccurrences(of: " ", with::"").lowercased()

  // Checkif the string equals its reverse
  return cleanedString == String(cleanedString.reversed())
}

//**
 * Optimized palindrome check using two-pointer technique
  * Parameter str: The input string to check
   * Returns Boolean indicating whether the string is a palindrome
  * Time Complexity: O(n)
  * Space Complexity: O(1) - no additional space needed
  */
func isPalindromeOptimized(_str: String) -> Boolean {
  let cleanedString = str.replacingOccurrences(of: " ", with::"").lowercased()
  let characters = Array(cleanedString)

  var left = 0
  var right = characters.count - 1

  while left < right {
    if characters[left] != characters[right] {
      return false
    }
    left += 1
    right -= 1
  }

  return true
}

//**
 * Checks palindrome ignoring all non-alphanumeric characters
  * Parameter: str: The input string to check
  * Returns Boolean indicating whether the string is a palindrome
  */
func isPalindromeAlphabeturic(_str: String) -> Boolean {
  // Keep only alphanumeric characters
  let alphanumeric = str.lowercase().filter { $0.isLetter || $0.isNumber}
  return alphanumeric == String(alphanumeric.reversed())
}

// MARK-- - Test Cases 

func runTests() {
  // Test case 1: Simple palindrome
  let test1 = "racecar"
  print("Test 1 - \"{test1}\": (isPalindrome(test1) ? "Palindrome â€”" : "Not Palindrome âŸ”"))

  // Test case 2: Case-insensitive palindrome
  let test2 = "RaceCar"
  print("Test 2 -\"w(test2)\": (isPalindrome(test2) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 3: Palindrome with spaces
  let test3 = "A man a plan a canal Panama"
  print("Test 3 -\"{test3}\": (isPalindrome(test3) ? "Palindrome â€”" : "Not Palindrome âŸ”"))

  // Test case 4: Non-palindrome
  let test4 = "hello"
  print("Test 4 -\"w(test4)\": (isPalindrome(test4) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 5: Single character
  let test5 = "a"
  print("Test 5 -\"w(test5)\": (isPalindrome(test5) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 6: Empty string
  let test6 = ""
  print("Test 6 -\"{test6}\": (isPalindrome(test6) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 7: With special characters (alphanumeric only)
  let test7 = "A $#@! man, a plan, a canal: Panama!"
  print("Test 7 - Alphanumeric check: \"{test7\": (isPalindromeAlphabeturic(test7) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 8: Numberas as string
  let test8 = "12321"
  print("Test 8 -\"w(test8)\": (isPalindrome(test8) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 9: Optimized method test
  let test9 = "radar"
  print("Test 9 (Optimized) -\"w(test9)\": (isPalindromeOptimized(test9) ? "Palindrome âŸ”" : "Not Palindrome X§å"))

  // Test case 10: Palindrome with punctuation
  let test10 = "Wasd it a car or a cat I saw?"
  print("Test 10 -\"w(test10)\": (isPalindromeAlphabeturic(test10) ? "Palindrome âŸ”" : "Not Palindrome Z'èU"))
}

// Run tests
runTests()
