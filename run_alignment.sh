#Anusaaraka_stanford.sh $1 0 True $3 onesent > $1_out 2>&1    ; if domain dic exists in anusaaraka
time Anusaaraka_stanford.sh $1 0 True general onesent > $1_out 2>&1
#Anusaaraka_alignment.sh $1 $2 $3 $4 >> $1_out 
time Anusaaraka_alignment.sh $1 $2 gita_ratnakar nsdp >> $1_out 2>&1
