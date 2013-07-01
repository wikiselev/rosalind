library(Biostrings)
options(stringsAsFactors = FALSE)

data <- readDNAStringSet("datafile.txt")
data <- as.data.frame(data)$x
data.split <- as.data.frame(strsplit(data, ""))
colnames(data.split) <- seq(1:length(data.split))

lets <- NULL

for(i in c(1:length(data.split[,1]))) {
	row <- data.split[i, ]
	A <- sum(as.numeric(row == "A"))
	C <- sum(as.numeric(row == "C"))
	T <- sum(as.numeric(row == "T"))
	G <- sum(as.numeric(row == "G"))
	lets <- rbind(lets, c(A, C, G, T))
}

lets <- t(lets)

consensus <- NULL

for(i in seq(1:dim(lets)[2])) {
	if (which.max(lets[ , i]) == 1) {consensus <- c(consensus, "A")}
	if (which.max(lets[ , i]) == 2) {consensus <- c(consensus, "C")}
	if (which.max(lets[ , i]) == 3) {consensus <- c(consensus, "G")}
	if (which.max(lets[ , i]) == 4) {consensus <- c(consensus, "T")}
}

consensus <- paste(consensus, collapse = "")

cat(consensus)
cat("\n")
cat("A: ")
cat(lets[1,])
cat("\n")
cat("C: ")
cat(lets[2,])
cat("\n")
cat("G: ")
cat(lets[3,])
cat("\n")
cat("T: ")
cat(lets[4,])
cat("\n")