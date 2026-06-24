name: TextStats
intent: a console program that reports statistics about a line of text
behavior:
  - read one line of text from standard input
  - print the character count, word count, and vowel count, each on its own labeled line
  - words are separated by whitespace; vowels are a e i o u, case-insensitive
constraints: C# 5, single file, no external packages, use a small static helper function per statistic
