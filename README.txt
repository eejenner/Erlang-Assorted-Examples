**Originally Created Fall 2014**

A series of Erlang functions demonstrating basic understanding of the language. 

(1) Implement a recursive function compareLists/2 that takes two lists of numbers, L1 and L2, as the parameters, and compares them elementwise. The function returns -1 if either L1 is shorter than L2 or some element of L1 is smaller than the corresponding element of L2. The function returns 0 if both lists are equal. The function returns 1, otherwise.

(2) Implement a recursive function pairLists/2 that takes two lists, L1 and L2, as the parameters, and returns a list of tuples composed of the corresponding elements of L1 and L2. For example, pairLists([1,2,3],[a,b,c]) shall return [(1,a),(2,b),(3,c)]. The function shall not make any assumptions about the relative lengths of L1 and L2.

(3) Implement a non-recursive function random_element/1 that returns a random element from the list. You will (probably) need functions lists:nth/2, random:uniform/1, and erlang:length/1. Do not forget to import necessary modules.

(4) Write two expressions, each of which transforms a list of numbers into a list of square roots of those numbers that are non-negative. For example, list [1,2,-4,-5,-8,4] shall be transformed into [1.0,1.4142135623730951,2.0]. The first expression shall use the functions lists:map/2 and lists:filter/2, and the second expression shall use list comprehension.

(5) Implement a non-recursive function bigrams/2 that takes two strings S1 and S2 as parameters and returns a list of all bigrams, that is, two-word strings where the first word comes from S1 and the second word comes from S2. For example, bigrams("I like cats","Hello world") shall produce ["I Hello","I world","like Hello","like world","cats Hello","cats world"]. Use functions join/2 and tokens/2 from module string and list comprehension.