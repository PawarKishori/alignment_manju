cd $HOME_anu_test/
git pull
echo "removing out files"
shell_scripts/remove_out-files.sh
echo "Compiling anu files"
shell_scripts/anu_compile.sh
echo "Compiling alignment files"
cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
sh minion_compile.sh
cd $HOME_anu_test/miscellaneous/SMT/phrasal_alignment
sh compile.sh
#echo "Compiling rule based parser files"
#cd $rule_based_parser
#sh compile.sh

