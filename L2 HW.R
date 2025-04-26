#question 1 Compute the difference between this year (2025) and the year you started at the university and divide this by the difference between this year and the year you were born. Multiply this with 100 to get the percentage of your life you have spent at the university.

current_year = 2025
admission_year = 2019
birth_year = 2001

answer1 = (current_year - admission_year)/(current_year - birth_year) * 100
answer1



#Make different kinds of variables and vectors with the data types we learned together.
#variables
x = 5
y = 10.0
z = 13.4

#characters
vector_number = c(1, 2, 2, 3, 5)
vector_character = c("xyz", "abc", "mno")
vector_float = c(2.34, 10, 5.657)

vector_new_float = c(vector_float, 3.3, 3)
vector_string = c("This is a string", "This is another string")
sum = vector_number + vector_new_float

round(sum)  #round goes for the nearest integers

floor(sum)  #floor always goes downward



# question 4
# Creating the data frame
names <- c("Mina", "Raju", "Mithu", "Lali")
gender <- c("Female", "Male", "Female", "Female")
age <- c(15, 12, 2, 3)
is_human <- c(TRUE, TRUE, FALSE, FALSE)

cartoon <- data.frame(name = names, gender = gender, age = age, is_human = is_human)


write.table(cartoon, "cartoon.csv", sep = ",", col.names = TRUE, row.names = FALSE)
df <- read.table("cartoon.csv", header = TRUE, sep = ",")

# Check dimensions
dim(df)  
cartoon

# Create a subset: Female and not human
subset <- df[df$gender == "Female" & df$is_human == FALSE, ]
subset

##subsets
cartoon[1:2, 2:3] #row 1-2, column 2-3


gene_expr <- data.frame(
  genes = c("TP53", "BRCA1", "MYC", "EGFR", "GAPDH", "CDC2"),
  sample1 = c(8.2, 6.1, 9.5, 7.0, 10.0, 12),
  Sample2 = c(5.9, 3.9, 7.2, 4.8, 7.9, 9),
  Sample3 = c(8.25, 6.15, 9.6, 7.1, 10.1, 11.9),
  pathways = c("Apoptosis", "DNA Repair", "Cell Cycle", "Signaling", "Housekeeping", "Cell Division")
)
write.table(gene_expr, "gene_expr.csv", sep = ",", col.names = TRUE)
gene_set <- read.table("gene_expr.csv", header = TRUE, sep = ",")


str(gene_expr)
length(gene_expr)

gene_expr[3:4, 1:2]

sample3_filter <- gene_expr[gene_expr$Sample3 >= 7, ]
sample3_filter

exam_marks <- data.frame(
  Name = c("Minerva", "Snape", "Voldemort"),
  DarkMagic = c(80, 100, 100),
  Potion = c(50, 100, 60),
  PassingStatus = c(TRUE, TRUE, FALSE)
)

write.table(exam_marks, "exam_marks.csv", sep = ",", col.names = TRUE)
HP_df <- read.table("exam_marks.csv", header = TRUE, sep = ",")


HP_df

HP_df$Name[1]
HP_df$PassingStatus[3]

#Voldemort's marks in Dark Magic
HP_df[3:3, 2:2]

HP_df$Potion >60
