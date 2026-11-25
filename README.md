# TxDb.Gmax.JGI.Gmv4

**TxDb.Gmax.JGI.Gmv4** provides transcript, exon, and coding sequence (CDS)
annotations for soybean (*Glycine max* cv. Williams 82, `Wm82.a4.v1`). The
SQLite database was generated from the official JGI/Phytozome V13 GFF3
annotation (`Phytozome-508`) and matching `Wm82.a4.v1` reference FASTA
(`282` sequences; `52,872` genes, `86,256` transcripts, `516,059` exons,
`516,059` CDS features), archived at
[Zenodo record 23882021](https://zenodo.org/records/23882021), and
distributed through Bioconductor's `AnnotationHub`.

## Installation

Install the package from Bioconductor:

```r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}
BiocManager::install("TxDb.Gmax.JGI.Gmv4")
```

To install the development version from GitHub:

```r
if (!requireNamespace("remotes", quietly = TRUE)) {
    install.packages("remotes")
}
remotes::install_github("kabilanbio/TxDb.Gmax.JGI.Gmv4")
```

## Usage

Retrieve the `TxDb` resource by querying `AnnotationHub` (avoiding hard-coded
resource identifiers):

```r
library(TxDb.Gmax.JGI.Gmv4)

ah <- AnnotationHub()
q <- query(ah, c("TxDb.Gmax.JGI.Gmv4", "Wm82.a4.v1"))
txdb <- q[[1]]

S4Vectors::metadata(txdb)
seqinfo(txdb)
genes(txdb)
head(transcripts(txdb))
exonsBy(txdb, by = "tx")
cdsBy(txdb, by = "tx")
```

## Data License, Terms of Use, and Citation

- **Package code and documentation:** Licensed under `Artistic-2.0`.
- **Annotation data:** Derived from the published, publicly released
  JGI/Phytozome V13 *Glycine max* `Wm82.a4.v1` assembly and annotation
  ([JGI Data Portal](https://data.jgi.doe.gov/refine-download/phytozome?expanded=Phytozome-508&genome_id=508)),
  available under the [JGI Data Utilization Policy](https://jgi.doe.gov/data-policy/),
  which permits academic reuse and redistribution with attribution.
- **Citations:**
  - Valliyodan, B. et al. (2019). Construction and comparison of three
    reference-quality genome assemblies for soybean. *The Plant Journal*,
    100(5), 1066–1082. <https://doi.org/10.1111/tpj.14500>
  - Schmutz, J. et al. (2010). Genome sequence of the palaeopolyploid
    soybean. *Nature*, 463(7278), 178–183. <https://doi.org/10.1038/nature08670>
  - Goodstein, D. M. et al. (2012). Phytozome: a comparative platform for
    green plant genomics. *Nucleic Acids Research*, 40(D1), D1178–D1186.
    <https://doi.org/10.1093/nar/gkr944>

## Documentation

See the package vignette:

```r
vignette("TxDb.Gmax.JGI.Gmv4", package = "TxDb.Gmax.JGI.Gmv4")
```
