#Random Forest

library(randomForest)
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow ( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

model = randomForest ( Species~. , data = trainset )
prediction = predict ( model, testset [ , 1 : 4 ] )

tab = table ( pred = prediction, true = testset [ , 5 ] )
confusionMatrix (tab)