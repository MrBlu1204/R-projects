#K Nearest neighbour


library(FNN)
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

prediction = knn( trainset [ , 1:4 ] , testset [ , 1:4 ] , trainset [ , 5 ] , 1 )

tab = table ( pred = prediction, true = testset [ , 5 ] )

confusionMatrix (tab)