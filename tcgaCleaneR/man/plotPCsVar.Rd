% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pc_reg_corr.R
\name{plotPCsVar}
\alias{plotPCsVar}
\title{Regression Analysis between PCs and unwanted variation}
\usage{
plotPCsVar(pca.data, data, type, nPCs)
}
\arguments{
\item{pca.data}{list: PCA output from \code{computePCA}.}

\item{data}{S4 data object}

\item{type}{character: The response variable to \code{lm} model. groups included are 'librarysize', 'purity' and 'time'.}

\item{nPCs}{numeric: Number of PCs that needs to be used for regression}
}
\value{
Linear Plot the compares the correlation between library size (or Purity, time) and PCs across three datasets. When output is stored in a object the user can also access values used to plot the linear graphs.
}
\description{
This function is a part of the data analysis functionality of \code{tcgaCleaneR}.
R2 values of fitted linear models are used to quantity the strength of the (linear) relationships between a single
quantitative source of unwanted variation such as sample (log) library size or tumor purity and global sample
summary statistics such as the first k PCs.
The function runs linear regression between unwanted variations in TCGA RNA-seq like
library size and purity with PCs from \code{computePCA}.
The output is a linear plot that compares the three \code{assays} in \code{SummarizedExperiment} TCGA Cancer data
across n PCs and R-sq.
For variable like Time which is not continuous, dummy variables are used to run
vector correlation \code{stats::cancor} between dummy time variable and n PCs with the same
linear output.
}
\examples{
\dontrun{
plotPCsVar(pca.data, data = brca.data, type = "purity", nPCs = 10)
df <- plotPCsVar(pca.data, data = brca.data, type = "time", nPCs = 8)
df
}
}
