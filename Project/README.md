
# EG10118 Data Analysis Project Example
Joseph Heston

Questions:

Example of a weak question:
1. What type of Pokemon is strongest? 

This is a bad question for a few reasons. What does it mean to be the "strongest"?
Is is the ATK stat? Is it DEF? A combination? It's unclear!
Secondly, this question isn't complex enough. Once we decide on a clear definition,
the problem is just a Google-search. 

Better Question:
1. How do a Pokemon's "stats" (Atk, Def, Speed, etc.) vary by their type?
This question is a bad engineering question, but a much better beginning to a data analysis project. 
 
Really, this question is a complex topic with several smaller questions "hiding" behind it:
1. How are the "stats" correlated with type? 
    How do the mean, stddev, median, max, min, etc. change based on typing?
2. Is there a type that's generally better (has higher stats) than another?
        What's imporant? (Compute the *weighted* average)
3. Accounting for type advantage, which Pokemon types should you take into a battle?

Another nice thing about this improved question is that it has a natural accompanying question:
2. How are Pokemon distributed by type? Are there more legendaries? More evolutions?

Excellent Question:
1. What is the best metric for determining a Pokemon's ability to win battles?
Corollary:
2. What Pokemon is strongest by this metric?
3. What types of Pokemon are strongest (i.e. what is most strongly correlated with strength?)


### Another Question:
You should be able to provide the source of your data, and it should be a reliable source.
I don't have that, but one thing I *can* do is examine the raw game data and check a few
random samples. The more random samples match, the more confident I can be that the data is correct. 
I won't be 100% certain without looking at the whole data set, but let's allow a confidence level of 90% 
and call that "good enough". 


## Structuring your Code:

Your code should be DRY (Do not Repeat Yourself). This means that if you find
yourself writing the same bits of code over and over, you should break that code 
out into its own function. 

You may find that you have lots of different functions. This is okay!