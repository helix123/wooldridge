
  ###########################################################
 # Explore and clean the Six edition Data that is corrupted #
############################################################
  
data_folder <-  "Data Sets- R"
  
# list files in the data set file, and verify they downloaded.
length(list.files(data_folder))
list.files(data_folder)

# Lets find out how big all the datasets are...whoa! 8,811,446!
original_size <- sum(file.info(paste(data_folder, list.files(data_folder), sep = "//"))$size)
original_size

# Explore size, and order by size.
file_info <- file.info(paste(data_folder, list.files(data_folder), sep = "//"))
file_info[order(file_info$size, decreasing = TRUE),]

# TEST: Have any files mistakenly been saved as ".r" files?
list.files(data_folder, pattern = ".r$")


   #########################################################
  # There are a few ".r" extensions, which must be errors.# 
 # We need to rename with ".txt" extenstions and import. #
#########################################################

# get names of .r files.
rfile_names <- paste(data_folder, list.files(data_folder, pattern = ".r$"), sep = "//")

#  rename to .txt files
txtfile_names <- paste(data_folder, gsub(".r$",".txt", list.files(data_folder, pattern = ".r$")), sep = "//")
file.rename(rfile_names, txtfile_names)

# Are there any files left with a ".r" extension? No.
list.files(data_folder, pattern = ".r$")

# import .txt data
clean_names <- gsub(".txt","", list.files(data_folder, pattern = ".txt$"))

for(i in clean_names) {
        file_location <- paste(paste(getwd(), data_folder, i, sep = "/"),"txt", sep =".")
        assign(i, readr::read_csv(file_location))
}


  #######################################################################
 # Create data description files for six files above converted to .txt #
#######################################################################

# Nor are they found in the 5th or 6th edition of other file formats, such as excel.
# In previous additions <= 4th, these dataa sets didn't exist.
list.files(data_folder, pattern = ".txt$")

# Write documentation function to build documentation files from .txt imports.      
documentation <- function(name, data) {        
                          file_name <- name
                          desc <- data.frame(variable=names(data))
                         
                # roxygen2 style syntax, written into .R files.
                title <- paste0("#' ", file_name)
                intro <- paste0("#' ", "Data from wooldRidge package loads lazily. Type data('",file_name, "') into the console.")
                type  <- paste0("#' @docType data")
                usage <- paste0("#' @usage data('", file_name,"')")
                message <- paste("#'", "@format", "A", class(data), "with", NROW(data), "rows and", NCOL(data), "variables:", sep = " ")
                start <- paste0("#' ","\\describe{")

                # transform variables and descriptions into roxygen2 ready format.  
                items <- matrix(data = NA, nrow=length(colnames(data)), ncol = 1)
                for(i in desc) {
                        items[i] <- paste0("#'  \\item","{",desc[i,1],"}{Description not provided}")
                }

                end <- "#' }"
                source <- "#' @source \\url{http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge}"
                example <- paste0("#' @examples ", " str(",file_name,")")    
                data_label <- paste0("\"", file_name,"\"")
                space <- "#'"
                blank <- " "

                # Paste all strings together to prepare for file for line by line write.
                help_file <- c(title, space, intro, space, type, space, usage, space, message, start, items, end, source, example, data_label, blank, blank)

                # Write out 1 string per line, into a .R file labeled to match each dataset
                write(help_file, paste(paste(getwd(),"R", file_name, sep = "/"),"R", sep ="."), append = TRUE)
                
                # function run complete.
} 

# View list of txt files to document
clean_names

# Call the functions
documentation("approval", approval)
documentation("catholic", catholic)
documentation("census2000", census2000)
documentation("countymurders", countymurders)
documentation("econmath", econmath)
documentation("meapsingle", meapsingle)


  ###########################################################
 # Write all data sets to high compression xz .Rdata files #
###########################################################

# Create "data" folder
dir.create("data")

# Create list of all datasets (from .Rdata and .r/txt files)
# loop over list and write to individual files...'save' dynamics require care.
# Commented out, so they don't execute.

 dataset_list <- clean_names
 for (i in dataset_list) {
 save(list = i, file = paste0("data/", i, ".RData"), compress = "xz", compression_level = 9)
 }
  
#lets test/check the file compression. 
tools::checkRdaFiles("data")

# Next, clear .env and import the new .RData file and see if it worked...success!
new_data_list <- list.files("data")
for (i in new_data_list) {
        path <- paste0("data/",i)
        load(path)
}

