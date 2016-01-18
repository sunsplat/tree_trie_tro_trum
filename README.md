## Week 2 Assessment

### The Dictionary Tree

Fork and clone this repo and get all tests passing!


#### The Problem:

Create a "Dictionary Tree" which stores words and their definitions.

In this tree, each node is a letter of the alphabet.  The word's definition is stored as an additional piece of data on its final letter.  A word can be located by searching through the tree, starting with its first letter and traversing the tree letter-by-letter until the final letter has been located.

The tree looks something like this (without the definitions included), where the shaded nodes represent completed words (e.g. "acre"):

![Example Tree](http://meandmark.com/blog/wp-content/uploads/2012/07/TrieExampleCropped.png)

You will need to implement the functionality which constructs the tree from a given list of words and their definitions and the functionality which allows you to retrieve the definition of a given word.


##### High Level Acceptance Criteria

To help you specify your tree, we've put together a series of specs which you will need to make pass.  They follow these acceptance criteria:

1. The root node has a letter value of `nil` and exists simply to store the first level of children.

1. All other nodes (children of root and children of those children etc..) WILL have letter values.
    * If the word 'apple' is inserted into an empty tree, the root node will have 1 child with a letter of 'a'. That node will have a child with the letter 'p' and this will continue until the word 'apple' is spelled completely.

1. Words that repeat letters at any level do not duplicate that letter node. 
    * If the word 'cat' has already been inserted into the tree, inserting the word 'cap' should only insert the letter 'p' in the tree at the level of 3 since 'c' and 'a' have already been created.

1. The definition of a word is to be stored on the last node of the word.
    * The definition of the word 'cat' would be stored on the 't' node at level 3.

1. Statistics about the tree are updated when words are inserted and removed. These include the following:
    * Depth (height or max depth) of the tree (NOT including the root node)
    * The number of words in the tree
    * The number of letters (nodes) in the tree (without counting shared letters or the root node)
        * This means if 'cat' and 'cap' are the only words in the tree the letter (node) count is 4
        * The root node is NOT counted

1. The root node is the ONLY node the tree is initialized with! All other nodes are inserted and removed dynamically as words are inserted and removed.

1. For for more details on the expected behavior of the tree see the specs!

1. HINTS:
    * To get started you'll need to create the files in the `lib/` directory that your specs are requiring.
    * The specs for this assessment are a bit less rigid that before to free you up to make decisions in your implementation.
    * Take a minute to mentally visualize how this tree would look and it will help. If it helps, make a quick sketch!



**DO NOT:**

* Attempt to solve this problem without creating a properly nested tree.

* Attempt to create "pretty" output of the tree (too time consuming!!!!)



**DO!**

* Check out the [Intro to Trees lesson](http://www.vikingcodeschool.com/unit-5-files-data-structures-and-algorithms/intro-to-trees) from the reading if you need a refresher on how trees work.

* Check out the [Depth first search lesson](http://www.vikingcodeschool.com/unit-5-files-data-structures-and-algorithms/depth-first-search-dfs) if you need a refresher on how finding tree depth works.

* Red! Green! **Refactor!**

* Complete the tests for the LetterNode object first, which should be very fast.

* Complete the tests for DictionaryTree after that.

**GOOD LUCK!**




#### !!! Extra Credit !!!

##### Track max tree width

##### Only when you've finished with the rest of the tests should you try the extra credit!

See the width tests at the bottom of `spec/dictionary_tree_spec.rb` that are commented out?
Uncomment them and make them pass!

##### About tree width:

The tree width is the max width of it's levels (depths).
In other words, if the first level is just the root node it has a width of 1.
If the tree has the words 'apple' and 'cat' in it, the second level should have a width of 2.

Where things get tricky is when the tree could have various levels of shared or unshared letters between words. Find the max width of the tree no matter what words are in it!


Check out the [Breadth first search lesson](http://www.vikingcodeschool.com/unit-5-files-data-structures-and-algorithms/breadth-first-search-bfs) if you need a refresher on finding the breadth (width) of a tree.



