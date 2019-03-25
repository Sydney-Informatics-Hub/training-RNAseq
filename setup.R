list_of_pkgs <- c("factoextra", "tidyverse", "ggrepel", "pheatmap")
# run the following line of code to install the packages you currently do not have
new_pkgs <- list_of_pkgs[!(list_of_pkgs %in% installed.packages()[,"Package"])]
if(length(new_pkgs)) install.packages(new_pkgs)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("limma", version = "3.8")
BiocManager::install("edgeR", version = "3.8")
BiocManager::install("biomaRt", version = "3.8")