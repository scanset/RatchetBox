using System;

namespace App
{
    internal static class Program
    {
        private static int Main(string[] args)
        {
            string input = Console.ReadLine();
            if (input == null)
            {
                return 1;
            }

            int charCount = GetCharCount(input);
            int wordCount = GetWordCount(input);
            int vowelCount = GetVowelCount(input);

            Console.WriteLine("Character count: " + charCount.ToString());
            Console.WriteLine("Word count: " + wordCount.ToString());
            Console.WriteLine("Vowel count: " + vowelCount.ToString());

            return 0;
        }

        private static int GetCharCount(string text)
        {
            return text.Length;
        }

        private static int GetWordCount(string text)
        {
            if (string.IsNullOrEmpty(text))
            {
                return 0;
            }

            int count = 0;
            bool inWord = false;

            for (int i = 0; i < text.Length; i++)
            {
                if (char.IsWhiteSpace(text[i]))
                {
                    if (inWord)
                    {
                        count++;
                        inWord = false;
                    }
                }
                else
                {
                    inWord = true;
                }
            }

            if (inWord)
            {
                count++;
            }

            return count;
        }

        private static int GetVowelCount(string text)
        {
            int count = 0;
            string vowels = "aeiouAEIOU";

            for (int i = 0; i < text.Length; i++)
            {
                if (vowels.IndexOf(text[i]) != -1)
                {
                    count++;
                }
            }

            return count;
        }
    }
}