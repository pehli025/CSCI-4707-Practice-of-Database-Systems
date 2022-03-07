/*
1. It took 39.83 and 25.84 seconds. the query is processed by the query optimizer to generate an execution plan. Then goes to the relational engine, the query compilation then happens in 3 steps, parsing, binding and optimization.

2. Execution time was 6.502 and 37.37ms for a equality comparisons, hash idexs are good for that. Hahs indexs create an index key from the value and locating that in the hash.

3. Execution time was 14.729 and 24.22. Yes there is a difference. The database assigns a unique random index for each of the records and conversts into a bytesteam. Each node has a reference to the next node, and is able to do a binary search by using the index searching through every element by traveling through the nodesdasdasadasdsdasda

4. This is the most efficient one yet, at 7.82ms and 21.37ms, it is the same as a regular b-tree with one set of unique random indexs, it has 2 sets for each column. 

5. SELECT sname FROM students WHERE age <> 25, execution time 50.193ms. Because the optimizer sees that it is not equal at that a majority of the values are not going to be in that not equal range. Therefore why waste the processing power to create the indexes for when most of the values are not going to be in that range, and it turns out that a full scan would be more efficient.

*/

SELECT sname FROM students WHERE age <> 25;
