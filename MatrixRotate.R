#Q6. You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees(clockwise).
#You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
# Roll No: 1828249 CSSE4 Manish Ranjan Behera
#Initializing The Matrices

x <- matrix(1:9, nrow=3, byrow=TRUE)  #by Row Major Order
a <- matrix(cbind(c(5,2,13,15),c(1,4,3,14),c(9,8,6,12),c(11,10,7,16)), nrow = 4,ncol = 4) #by Column Major Order
y <- matrix(1:16, nrow=4, ncol=4)  #by Column Major Order
z <- matrix(1)

b<-matrix(1:4, nrow=2,ncol=2)

# User Defined Function to Rotate the Matrix by 90 degrees clockwise
rotate <- function(x) {
  t(apply(x, 2, rev))
}

#Rotating the Matrices using the user defined Function rotate()
x
rotate(x)
a
rotate(a)
y
rotate(y)
z
rotate(z)

b
rotate(b)