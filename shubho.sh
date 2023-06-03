#! /bin/sh
grep -v ">" sequence.fasta > temp && mv temp sequence.fasta.txt 
grep -o 'T' sequence.fasta | wc -l >> T_file.txt
grep -o 'A' sequence.fasta | wc -l >> A_file.txt
grep -o 'G' sequence.fasta | wc -l >> G_file.txt
grep -o 'C' sequence.fasta | wc -l >> C_file.txt



echo 'Adenine content' > a.txt
echo 'Guanine content' > g.txt
echo 'Thymine content' > t.txt
echo 'Cytosine content' > c.txt

cat a.txt A_file.txt g.txt G_file.txt c.txt C_file.txt t.txt T_file.txt > R.txt

perl new.pl  2>&1 | tee GC.txt

cat R.txt GC.txt > result.txt

rm A_file.txt T_file.txt G_file.txt C_file.txt a.txt t.txt g.txt c.txt GC.txt sequence.fasta.txt R.txt
cat result.txt
