set path D:\Downloads\abc\PDB
cd ${path}
for {set i 20000} {$i < 79999} {incr i 1} {
    set filename "${i}.pdb"
    mol addfile $filename type pdb waitfor all
}
animate write xyz traj.xyz beg 0 end -1 waitfor all