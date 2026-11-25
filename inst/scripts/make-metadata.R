### =========================================================================
### make-metadata.R
### -------------------------------------------------------------------------
###
### Generate inst/extdata/metadata.csv for the soybean TxDb AnnotationHub
### resource. Validate the output with:
###
###   AnnotationHubData::makeAnnotationHubMetadata("<path to package>")
###
### The SourceUrl, Location_Prefix, and RDataPath below point to the
### Zenodo record (23882021) hosting the SQLite resource derived from the
### JGI/Phytozome V13 Glycine max Wm82.a4.v1 annotation (Phytozome-508).
###

zenodo_record_url <- "https://zenodo.org/records/23882021"

meta <- data.frame(
    Title = "TxDb.Gmax.JGI.Gmv4 JGI/Phytozome Wm82.a4.v1",
    Description = paste(
        "Transcript, exon, and CDS annotations for Glycine max",
        "(Wm82.a4.v1), generated from the JGI/Phytozome gene GFF3 annotation."
    ),
    BiocVersion = "3.24",
    Genome = "Wm82.a4.v1",
    SourceType = "GFF",
    SourceVersion = "Wm82.a4.v1",
    SourceUrl = zenodo_record_url,
    Species = "Glycine max",
    TaxonomyId = "3847",
    Coordinate_1_based = TRUE,
    DataProvider = "Joint Genome Institute (JGI)/Phytozome",
    Maintainer = "Kabilan S <kabilan151414@gmail.com>",
    RDataClass = "TxDb",
    DispatchClass = "SQLiteFile",
    Location_Prefix = "https://zenodo.org/",
    RDataPath = "records/23882021/files/TxDb.Gmax.JGI.Gmv4.sqlite",
    Tags = "AnnotationData:TxDb:Glycine_max:SequenceAnnotation:AnnotationHub",
    stringsAsFactors = FALSE
)

write.csv(
    meta,
    file = "inst/extdata/metadata.csv",
    row.names = FALSE,
    na = ""
)
