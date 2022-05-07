clear
echo " Welcone to Recon-King"
read -p "Please enter url to continue ==> " u
amass enum -passive -d $u -o ~/scans/$u.txt
clear
echo "Now Probing"
cd ~/go/bin
cat ~/scans/$u.txt | ./httprobe > ~/scans/filtered/$u.txt 
clear 
echo "Starting Nuclei Scan"
nuclei -l ~/scans/filtered/$u.txt -o ~/scans/nuclei/$u.txt
open ~/scans/nuclei/