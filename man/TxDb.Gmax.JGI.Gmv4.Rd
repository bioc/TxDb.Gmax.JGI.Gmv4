\name{TxDb.Gmax.JGI.Gmv4}
\docType{package}

\alias{TxDb.Gmax.JGI.Gmv4-package}
\alias{TxDb.Gmax.JGI.Gmv4}

\title{Transcript annotation database for soybean}

\description{
    \pkg{TxDb.Gmax.JGI.Gmv4} provides transcript, exon, and coding sequence
    (CDS) annotations for soybean (\emph{Glycine max} cv. Williams 82,
    \code{Wm82.a4.v1}), generated from the official JGI/Phytozome V13 gene
    GFF3 annotation (\code{Phytozome-508}) together with the matching
    \code{Wm82.a4.v1} reference FASTA sequence dictionary (282 sequences,
    52,872 genes, 86,256 transcripts, 516,059 exons, and 516,059 CDS
    features). The SQLite \code{TxDb} object is hosted via Zenodo
    (\url{https://zenodo.org/records/23882021}) and distributed through
    Bioconductor's \pkg{AnnotationHub}.
}

\note{
    The \code{TxDb} SQLite file is not bundled inside this package. It is
    distributed through \pkg{AnnotationHub} and cached locally after
    retrieval. Loading \pkg{TxDb.Gmax.JGI.Gmv4} attaches
    \pkg{AnnotationHub}, \pkg{GenomicFeatures}, and \pkg{AnnotationDbi}.
}

\section{Data License, Terms of Use, and Citation}{
    The R package code and documentation are licensed under
    \code{Artistic-2.0}. The underlying \emph{Glycine max} \code{Wm82.a4.v1}
    reference assembly and gene annotation are published, publicly released
    datasets provided by the U.S. Department of Energy Joint Genome Institute
    (DOE JGI) via Phytozome V13 under the JGI Data Utilization Policy
    (\url{https://jgi.doe.gov/data-policy/}). Because \code{Wm82.a4.v1} is a
    published public release with no active embargo, academic use and
    redistribution of the derived SQLite \code{TxDb} resource via Zenodo and
    \pkg{AnnotationHub} are permitted with attribution to the original data
    producers and Phytozome.
}

\references{
    Valliyodan, B., Cannon, S. B., Bayer, P. E., Shu, S., Brown, A. V.,
    Ren, L., et al. (2019). Construction and comparison of three
    reference-quality genome assemblies for soybean.
    \emph{The Plant Journal}, 100(5), 1066--1082.
    \doi{10.1111/tpj.14500}

    Schmutz, J., Cannon, S. B., Schlueter, J., Ma, J., Mitros, T.,
    Nelson, W., et al. (2010). Genome sequence of the palaeopolyploid
    soybean. \emph{Nature}, 463(7278), 178--183.
    \doi{10.1038/nature08670}

    Goodstein, D. M., Shu, S., Howson, R., Neupane, R., Hayes, B.,
    Fazo, J., et al. (2012). Phytozome: a comparative platform for green
    plant genomics. \emph{Nucleic Acids Research}, 40(D1), D1178--D1186.
    \doi{10.1093/nar/gkr944}
}

\author{
    Dwijesh Chandra Mishra (aut),
    Kabilan S (aut, cre) \email{kabilan151414@gmail.com}
}

\seealso{
    \link[AnnotationHub]{AnnotationHub},
    \link[GenomicFeatures]{genes},
    \link[GenomicFeatures]{transcripts},
    \link[GenomicFeatures]{transcriptsBy}
}

\examples{
ah <- AnnotationHub()
q <- query(ah, c("TxDb.Gmax.JGI.Gmv4", "Wm82.a4.v1"))
if (length(q) >= 1L) {
    txdb <- q[[1]]
    txdb
    head(genes(txdb))
}
}

\keyword{package}
\keyword{data}
