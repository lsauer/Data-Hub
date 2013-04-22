#!/usr/bin/perl
#author: www.lsauer.com / lo sauer 2010
#Response to the question 'How are the hash-files shuffled?'
#For the hash-password files see: https://github.com/lsauer/Data-Hub/tree/master/databases/passwordHashes
#-Windows users: > type file1.ext file2.ext ... | cutnshuffle.pl > outfile.ext
# 	for instance: c:\~wordHashes>type lastfm_unconfirmed_shuffle_3percent.md5 | cutnshuffle.pl > out
#
#-Mac,Linux: $ chmod 777 cutnshuffle.pl
#            $ cat file1.ext file2.ext ... | ./cutnshuffle.pl > outfile.ext
#		for instance: ~/$ cat eharmony_nr_shuffle_10percent.md5 | ./cutnshuffle.pl > out

use List::Util 'shuffle';
use POSIX; #for ceil

@list = <STDIN>;
@list = shuffle(@list);
$percent = ($ARGV[0] == 'p' && scalar($ARGV[1]) > 1) ? scalar($ARGV[1]) : 3;
$lines = ceil($percent * scalar(@list)/100);
print @list[0..$lines];