using Documenter, FASTX

# Generate manual pages and examples.
include("generate.jl")

# Build documentation.

makedocs(
    format = :html,
    modules = [FASTX, BioSequences, BioCore],
    sitename = "FASTX.jl",
    doctest = false,
    strict = false,
    pages = [
        "Home" => "index.md",
        "Manual" => [
            "FASTA formatted files" => "manual/generated/fasta.md",
            "FASTQ formatted files" => "manual/generated/fastq.md"
        ],
        "API Reference" => [
            "FASTA formatted files" => "manual/reference/fasta.md",
            "FASTQ formatted files" => "manual/reference/fastq.md"
        ]
    ],
    authors = "Ben J. Ward, The BioJulia Organisation and other contributors."
)