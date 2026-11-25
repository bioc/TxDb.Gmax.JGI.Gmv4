# NEWS for TxDb.Gmax.JGI.Gmv4 Package

## Version 0.99.3 (2026-11-25)

- Updated the vignette, README, and manual page to query `AnnotationHub` via
  `query(ah, c("TxDb.Gmax.JGI.Gmv4", "Wm82.a4.v1"))` instead of hard-coding
  an `AnnotationHub` resource ID, and renamed the vignette variable to `txdb`.
- Added provenance details (`metadata(txdb)`, JGI/Phytozome V13 download date
  and MD5 checksums, SQLite build date, and expected feature counts) to
  `inst/scripts/make-data.R` and the vignette, plus a worked `GRanges`
  locus/SNP overlap example.
- Documented data license, JGI/Phytozome terms of use, redistribution
  permissions, and reference citations (Valliyodan et al. 2019, Schmutz et al.
  2010, Goodstein et al. 2012) in the vignette, Rd page, and README.
- Added an offline-guarded `testthat` test verifying live `AnnotationHub`
  retrieval, `TxDb` class, `Wm82.a4.v1` genome label, `seqlengths`, and
  gene/transcript/exon/CDS counts.
- Moved `AnnotationHub`, `GenomicFeatures`, and `AnnotationDbi` from `Imports`
  to `Depends` in `DESCRIPTION` and removed unused wholesale imports from
  `NAMESPACE`.
- Updated `SourceUrl` in `inst/extdata/metadata.csv` and
  `inst/scripts/make-metadata.R` to point to Zenodo record `23882021`.

## Version 0.99.2 (2026-11-02)

- Updated the data-generation workflow to derive sequence information from
  the Wm82.a4.v1 reference FASTA and validate the saved SQLite database.
- Aligned AnnotationHub metadata with the JGI/Phytozome Wm82.a4.v1 source.
- Updated the SQLite resource path to Zenodo record 23882021.
- Documented direct retrieval of the TxDb through AnnotationHub; no
  package-specific retrieval helper is required.
- Updated package dependencies, installation instructions, and vignette.

## Version 0.99.1 (2026-09-04)

- Replaced the pre-computed vignette artifacts (`preCompile.R`,
  `pre_compute_vignette.Rmd`, `vignette.Rmd.orig`) with a standard evaluated
  vignette to resolve `R CMD check` and `BiocCheck` warnings, and updated the
  author list in `DESCRIPTION`.

## Version 0.99.0 (2026-08-07)

### Initial Release

- First release of the package.
- The TxDb resource is distributed through AnnotationHub rather than shipped
  inside the package; it is retrieved at runtime with `AnnotationHub()`.
- Added `inst/scripts/make-data.R` and `inst/scripts/make-metadata.R`
  documenting how the TxDb resource and its AnnotationHub metadata are built.
