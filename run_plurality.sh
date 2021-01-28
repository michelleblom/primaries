
for d in Data/Plurality/*/ ; do
    bn=`basename $d`
    echo ${d}
    ./irvaudit -rep_ballots "${d}${bn}_statewide.raire" -rep_outcome "${d}${bn}_sw_outcome.csv" -json "${d}${bn}_audit_level_0_r10_er0002.json" -r 0.10 -alglog -level 0 -plurality > "${d}${bn}_result_level_0_r10_er0002.txt"

    ./irvaudit -rep_ballots "${d}${bn}_statewide.raire" -rep_outcome "${d}${bn}_sw_outcome.csv" -json "${d}${bn}_audit_level_1_r10_er0002.json" -r 0.10 -alglog -level 1 -plurality > "${d}${bn}_result_level_1_r10_er0002.txt"
    
    ./irvaudit -rep_ballots "${d}${bn}_statewide.raire" -rep_outcome "${d}${bn}_sw_outcome.csv" -json "${d}${bn}_audit_level_2_r10_er0002.json" -r 0.10 -alglog -level 2 -plurality > "${d}${bn}_result_level_2_r10_er0002.txt"

done


