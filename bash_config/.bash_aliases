#alias common git commands. Some override other apps (like ghost shell whatever that is) 
alias gs='git status'


######## OS configs ##################
#run checkpatch
alias checkpatch='git diff 7af064634 | perl scripts/checkpatch.pl --ignore FILE_PATH_CHANGES,SPDX_LICENSE_TAG'

#easy cd-ing into the current hw dir
HWDIR="$(cat ~/.hwdir)"

alias c="cd $HWDIR"

seth () {
	if(($#==1)); then
		echo $1 > ~/.hwdir
	fi
}
