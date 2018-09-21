#Readme to create phrasal dictionaries and to run phrasal alignment:
###################################################################

Pre-requisite:
############
1. anusaaraka need to be installed.
2. rule based hindi parser need to be installed.
	(Note: git clone anu_resources@10.2.62.172:/home/anu_resources/hindi-parser-repo/create-hindi-parser.git
	       set the path in bashrc : export rule_based_parser=<path of hindi parser>)
3. phrase tables (eng-hin and hin-eng)
4. HINDI_POS_CHUNKER.tgz


Note:
(phrasal data available for the following corpuses
        physics                 physics
        social_science          social_science
        crime_and_punishment    crm_pns
        Total_tourism           tourism
	Total_health		health
	rashid			rashid	
)


For first time:
--------------
1. sudo apt-get install python-networkx

to generate phrase tables into dictionary format
===============================================
1. sh run.sh <phrase-table-en-hi> <phrase-table-hi-en> <corpus>
	Ex: sh run.sh phrases_en-hi  phrases_hi-en  physics

Compilation:
------------
1. cd $HOME_anu_test
2. git pull
3. shell_scripts/remove_out-files.sh
4. shell_scripts/anu_compile.sh 
5. cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment 
6. sh minion_compile.sh
7. cd $HOME_anu_test/miscellaneous/SMT/phrasal_alignment
8. sh compile.sh
9. cd $rule_based_parser
10. git pull
11. sh compile.sh 

To run alignment:
----------------
sh run_alignment.sh <ENG> <HND> <corpus_name> 

	Ex: sh run_alignment.sh ENG HND physics 

	(NOTE: Where ENG and HND are parallel corpus one sentence per line )
	       

To view layered o/p for alignment:
---------------------------------
firefox $HOME_anu_output/<filename>_eng_align.html
	Ex: firefox $HOME_anu_output/sample_eng_align.html
	(where sample is the input file.) 
