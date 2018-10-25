  $ IN=$TESTDIR/data/m54019_171011_032401_tiny.subreadset.xml
  $ REF=$TESTDIR/data/lambdaNEB_BsaAI_allFrags_incLeftRightEnds_unrolled_250k.fasta

  $ $__PBTEST_PBMM2_EXE align $IN $REF $CRAMTMP/hqregion.alignmentset.xml --log-level INFO --hqregion 2>&1| grep INFO | grep "Mapped Read Length"
  *Max Mapped Read Length: 17670 (glob)
  *Mean Mapped Read Length: 15659 (glob)

  $ cd $TESTDIR/data
  $ $__PBTEST_PBMM2_EXE align unrolled.json lambdaNEB_BsaAI_allFrags_incLeftRightEnds_unrolled_250k.fasta $CRAMTMP/zmw_json.alignmentset.xml --log-level DEBUG --zmw 2>&1| grep -v "#Reads, #Aln, #RPM"
  *for alignments. (glob)
  *Will not automatically set preset based on JSON input, because unrolled mode via --zmw or --hqregion has been set! (glob)
  *Start reading/building index (glob)
  *Finished reading/building index (glob)
  *Minimap2 parameters based on preset: UNROLLED (glob)
  *Kmer size              : 15 (glob)
  *Minimizer window size  : 15 (glob)
  *Homopolymer compressed : true (glob)
  *Gap open 1             : 2 (glob)
  *Gap open 2             : 32 (glob)
  *Gap extension 1        : 1 (glob)
  *Gap extension 2        : 0 (glob)
  *Match score            : 1 (glob)
  *Mismatch penalty       : 2 (glob)
  *Z-drop                 : 200 (glob)
  *Z-drop inv             : 100 (glob)
  *Bandwidth              : 2000 (glob)
  *Mapped Reads: 2 (glob)
  *Alignments: 2 (glob)
  *Mapped Bases: 55704 (glob)
  *Mean Mapped Concordance: 82.0908% (glob)
  *Max Mapped Read Length: 39629 (glob)
  *Mean Mapped Read Length: 27852 (glob)
  *Index Build/Read Time:* (glob)
  *Alignment Time:* (glob)
  *PBI Generation Time:* (glob)
  *Run Time:* (glob)
  *CPU Time:* (glob)
  *Peak RSS:* (glob)