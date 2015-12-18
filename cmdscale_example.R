require(graphics)

loc <- cmdscale(eurodist)
x <- loc[, 1]
y <- -loc[, 2] # reflect so North is at the top
## note asp = 1, to ensure Euclidean distances are represented correctly
plot(x, y, type = "n", xlab = "", ylab = "", asp = 1, axes = FALSE)
#     main = "cmdscale(eurodist)")
title("cmdscale(eurodist)", cex.main = 0.75,   font.main= 1, col.main= "blue")
text(x, y, rownames(loc), cex = 0.6)
