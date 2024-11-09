|---------------------------COMMANDS TO INSTALL REQUIREMENTS|---------------------------|
|											|
|	1.	sudo apt install fastqc		#For installing fastqc			|
|	2.	sudo apt install multiqc	#For installing emboss			|
|	3.	sudo apt install emboss		#For installing emboss			|
|											|
|---------------------------------------------------------------------------------------|



|------------------------------------------------------------------------COMMANDS TO PERFORM BASIC OPERATIONS ON THE (.fastq) FILE------------------------------------------------------------------------|
|																									  |
|	1.	gunzip -c input.fastq.gz > output.fastq							#To decompress the fast.gz file while still retaining the original compressed file		  |
|																									  |
|	2.	fastqc input.fastq									#To run fastqc analysis on the .fastq file							  |
|																									  |
|	3.	multiqc . -v										#To run multiqc test on the fastqc outputs; -v flag for output logs				  |		
|                                                                                                                                                                                                         |
|	4.	seqtk seq -a input.fastq > output.fasta							#To convert .fastq to .fasta				                                          |
|	                                                                                                                                                                                                  |
|	5A.	transeq -sequence input.fasta -outseq output_aa.fasta					#To get the amino acid sequences from the nucleotide sequences                                    |
|	5B.	transeq -sequence your_sequences.fasta -outseq amino_acid_sequences.fasta -frame n	# n specifies the number of frames to be translated, in case the file contains multiple sequences |
|		                                                                                                                                                                                          |
|	6.	getorf -sequence input.fasta -outseq output_orfs.fasta					#Get Open Reading Frames from the nucleotide sequences                                            |
|                                                                                                                                                                                                         |
|	7.	seqkit split -p n file.fasta								#To split file.fasta into n parts								  |   		
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
