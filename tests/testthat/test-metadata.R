test_that("AnnotationHub metadata describes the soybean Wm82.a4.v1 resource", {
    metadata_file <- system.file(
        "extdata",
        "metadata.csv",
        package = "TxDb.Gmax.JGI.Gmv4"
    )

    expect_true(nzchar(metadata_file))

    metadata <- read.csv(metadata_file, stringsAsFactors = FALSE)

    expect_equal(nrow(metadata), 1L)
    expect_equal(metadata$Species, "Glycine max")
    expect_equal(metadata$Genome, "Wm82.a4.v1")
    expect_equal(metadata$SourceType, "GFF")
    expect_equal(metadata$SourceUrl, "https://zenodo.org/records/23882021")
    expect_equal(metadata$RDataClass, "TxDb")
    expect_equal(
        metadata$RDataPath,
        "records/23882021/files/TxDb.Gmax.JGI.Gmv4.sqlite"
    )
})

test_that("AnnotationHub returns the validated Wm82.a4.v1 TxDb resource", {
    skip_if_offline()

    ah <- AnnotationHub::AnnotationHub()
    q <- AnnotationHub::query(ah, c("TxDb.Gmax.JGI.Gmv4", "Wm82.a4.v1"))
    expect_gte(length(q), 1L)

    txdb <- q[[1]]
    expect_s4_class(txdb, "TxDb")

    si <- GenomeInfoDb::seqinfo(txdb)
    expect_equal(length(si), 282L)
    expect_true(all(GenomeInfoDb::genome(si) == "Wm82.a4.v1"))
    expect_false(anyNA(GenomeInfoDb::seqlengths(si)))
    expect_equal(unname(GenomeInfoDb::seqlengths(si)["Gm01"]), 57932355L)

    expect_equal(length(GenomicFeatures::genes(txdb)), 52872L)
    expect_equal(length(GenomicFeatures::transcripts(txdb)), 86256L)
    expect_equal(length(GenomicFeatures::exons(txdb)), 516059L)
    expect_equal(length(GenomicFeatures::cds(txdb)), 516059L)
})
