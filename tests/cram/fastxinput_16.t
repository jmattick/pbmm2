  $ BAM="$TESTDIR"/data/median.bam
  $ REF="$TESTDIR"/data/ecoliK12_pbi_March2013.fasta

  $ "$SAMTOOLS" view "$BAM" | awk '{ print "@"$1"\n"$10"\n+\n"$11 }' > "$CRAMTMP"/median.fastq
  $ FASTQ="$CRAMTMP"/median.fastq
  $ cp "$CRAMTMP"/median.fastq "$CRAMTMP"/median_compressed.fastq
  $ gzip "$CRAMTMP"/median_compressed.fastq
  $ FASTQGZ="$CRAMTMP"/median_compressed.fastq.gz
  $ "$SAMTOOLS" view "$BAM" | awk '{ print ">"$1"\n"$10 }' > "$CRAMTMP"/median.fasta
  $ FASTA="$CRAMTMP"/median.fasta
  $ cp "$CRAMTMP"/median.fasta "$CRAMTMP"/median_compressed.fasta
  $ gzip "$CRAMTMP"/median_compressed.fasta
  $ FASTAGZ="$CRAMTMP"/median_compressed.fasta.gz

  $ "$PBMM2" align -j 1 "$REF" "$FASTQ" "$CRAMTMP"/fastq_sortedds.alignmentset.xml --sort 2> "$CRAMTMP"/fastq_sortedds.err || echo $?
  $ cut -f 8 -d '|' < "$CRAMTMP"/fastq_sortedds.err
  *Input is FASTQ.* (glob)
  - Input is not a dataset, but output is. Please use dataset input for full SMRT Link compatibility!
  $ "$SAMTOOLS" view -H "$CRAMTMP"/fastq_sortedds.bam | grep "@HD" | grep "coordinate" | wc -l | tr -d ' '
  1
  $ ls -alh "$CRAMTMP"/fastq_sortedds.bam.pbi 2> /dev/null | wc -l | tr -d ' '
  1
  $ ls -alh "$CRAMTMP"/fastq_sortedds.bam.bai 2> /dev/null | wc -l | tr -d ' '
  1
  $ ls -alh "$CRAMTMP"/fastq_sortedds.bam.csi 2> /dev/null | wc -l | tr -d ' '
  0
  $ ls -alh "$CRAMTMP"/fastq_sortedds.*.xml 2> /dev/null | wc -l | tr -d ' '
  1
  $ ls -alh "$CRAMTMP"/fastq_sortedds.json 2> /dev/null | wc -l | tr -d ' '
  0