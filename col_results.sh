
for d in Data/Plurality/*/ ; do
    bn=`basename $d`
    echo ${d}
    python3 print_res.py "${d}${bn}_result_level_0_r10_er0002.txt"
    python3 print_res.py "${d}${bn}_result_level_1_r10_er0002.txt"
    python3 print_res.py "${d}${bn}_result_level_2_r10_er0002.txt"
done


