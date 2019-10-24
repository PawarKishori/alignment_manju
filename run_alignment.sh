
#Anusaaraka_stanford.sh $1 0 True $3 onesent > $1_out 2>&1    ; if domain dic exists in anusaaraka
echo "Time taken to run only Anusaaraka:"
#time Anusaaraka_stanford.sh $1 0 True general onesent > $1_out 2>&1
#time Anusaaraka_stanford.sh $1 0 True geography onesent > $1_out 2>&1
time Anusaaraka_stanford.sh $1 0 True computer_science onesent > $1_out 2>&1
echo "Time taken to run only Anusaaraka_alignment.sh:"
#Anusaaraka_alignment.sh $1 $2 $3 $4 >> $1_out 
time Anusaaraka_alignment.sh $1 $2 $3 $4 >> $1_out 2>&1
