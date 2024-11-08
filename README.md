# DNA Sequence Initial Analysis

This repository contains files and scripts for the preliminary steps in DNA sequence analysis, covering quality control, sequence conversion, and basic sequence translation tasks. These steps were performed using FastQC, MultiQC, and EMBOSS, with all commands executed via the Linux command line.

## Contents

- **Raw .fastq file**: Initial DNA sequence data.
- **FastQC Reports**: Quality assessment of the sequencing data.
- **MultiQC Report**: Summary of quality control results from FastQC.
- **.fasta file**: DNA sequences converted from the raw .fastq file.
- **Protein sequences**: Translated DNA sequences.
- **ORF sequences**: Open Reading Frames (ORFs) obtained from the DNA sequences.

## Analysis Steps

The analysis covers basic data inspection and conversion steps:

1. **FastQC**: Quality assessment of raw data using the `fastqc` command.
2. **MultiQC**: Compilation of FastQC reports using the `multiqc` command.
3. **Conversion to FASTA**: Transforming the `.fastq` format to `.fasta` for downstream analysis.
4. **Translation to Protein**: Translating DNA sequences into protein sequences.
5. **ORF Detection**: Identifying Open Reading Frames using the `getorf` command from EMBOSS.

## Tools Used

- **FastQC**: Quality control for high-throughput sequence data.
- **MultiQC**: Aggregates quality control results for easy interpretation.
- **EMBOSS**: Bioinformatics tool suite (including `getorf` for ORF detection).
- **Linux Command Line**: All steps were performed via bash commands.

## Requirements

To replicate these steps, ensure you have:

- A Linux-based environment
- FastQC
- MultiQC
- EMBOSS (for `getorf`)

## Instructions

Clone the repository to your local machine:

```bash
git clone https://github.com/lovekaushik899/SequenceAnalysis_Basics.git
```

Navigate to the repository folder:

```bash
cd SequenceAnalysis_Basics
```

Use the following commands to repeat the analysis:

1. **Run FastQC**:
   ```bash
   fastqc input.fastq
   ```

2. **Generate a MultiQC Report**:
   ```bash
   multiqc .
   ```

3. **Convert .fastq to .fasta**:
   ```bash
   seqtk seq -a inout.fastq > output.fasta
   ```

4. **Translate DNA to Protein**:
   ```bash
   transeq -sequence output.fasta -outseq protein_sequences.fasta
   ```

5. **Identify ORFs**:
   ```bash
   getorf -sequence output.fasta -outseq orfs.fasta
   ```
