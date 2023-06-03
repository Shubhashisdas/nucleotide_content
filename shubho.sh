#! /bin/sh
grep -v ">" sequence.fasta > temp && mv temp sequence.fasta.txt 
grep -o 'T' sequence.fasta | wc -l >> T_file
grep -o 'A' sequence.fasta | wc -l >> A_file
grep -o 'G' sequence.fasta | wc -l >> G_file
grep -o 'C' sequence.fasta | wc -l >> C_file

echo 'Adenine content' > a.txt
echo 'Guanine content' > g.txt
echo 'Thymine content' > t.txt
echo 'Cytosine content' > c.txt

cat a.txt A_file g.txt G_file c.txt C_file t.txt T_file > Result_base_content.txt
rm A_file T_file G_file C_file a.txt t.txt g.txt c.txt
