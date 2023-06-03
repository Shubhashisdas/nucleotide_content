# Opening the file 
open(fh_a, "A_file.txt") or die "File '$filename' can't be opened";
open(fh_t, "T_file.txt") or die "File '$filename' can't be opened";
open(fh_g, "G_file.txt") or die "File '$filename' can't be opened";
open(fh_c, "C_file.txt") or die "File '$filename' can't be opened";


# Reading First line from the file
$a = <fh_a>;

$t = <fh_t>;

$g = <fh_g>;

$c = <fh_c>;



$GC = $g + $c;
$total = $a + $t + $g + $c;
$content = $GC / $total;
$result = $content * 100;
print 'GC % = ' . $result . "\n";
