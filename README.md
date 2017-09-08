# _Prodigy Pizza Webpage_

#### It's a method that takes two words and determines if they are anagrams, _9/8/2017_

#### By _**Dawson Mortenson**_

## Description
The anagram method is a method of the Grams class which takes one word or phrase on initialization. The anagram method is called on a Grams object and takes a second word or phrase as a argument. The method returns whether or not a word is an anagram, an antigram, or a palindrome. It handles words with different cases and punctuation. Lastly, it validates words by checking for vowels in the given words.

#### Specifications
| Behavior                                                        | Input                     | Output                |
| --------------------------------------------------------------- |:-------------------------:| ---------------------:|
| Two words that are anagrams are given                           | ruby, bury                | it's a anagram        |
| Two words that aren't anagrams are given                        | curry, bury               | it's not an anagram   |
| Two words that have are anagrams but have different case        | Frost, forts              | it's an anagram       |
| Two words that are the same and are palindromes are given       | kayak, kayak              | it's a palindrome     |
| Two phrases that are palindromes are given and have punctuation | "no lemons, no melon", "" | it's a palindrome     |
| Two words are given but one is an invalid word                  | curry, flrp               | invalid word detected |
| Two words that are antigrams are given                          | cat, rope                 | it's an antigram      |

#### To Test Locally
* `git clone https://github.com/CodingTea17/anagram-antigram-findr.git` into your desired directory.
* `cd anagram-antigram-findr`
* Run 'rspec' and the tests will be ran

## Technologies Used

_Ruby_

### License

*This website is licensed under the MIT License*

Copyright (c) 2017 **_Dawson Mortenson_**
