cp -r compile_prog.sh  $1 $2  $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/
#cp  HINDI_POS_CHUNKER.tgz  $HOME_anu_test/miscellaneous/
#cd $HOME_anu_test/miscellaneous/
#tar -xvzf HINDI_POS_CHUNKER.tgz
#cd $HOME_anu_test/miscellaneous/HINDI_POS_CHUNKER
#sh compile.sh
cd  $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/
sh  compile_prog.sh
if [ "$3" != "" ] ; then
	sh get_phrasal_dic-en-hi.sh $1 $3 
	sh get_phrasal_dic-hi-en-en.sh $2 $3
else
	sh get_phrasal_dic-en-hi.sh $1
	sh get_phrasal_dic-hi-en-en.sh $2
fi
