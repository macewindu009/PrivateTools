source ~/bashrc/default.sh
source ~/bashrc/cmssw.sh
source ~/bashrc/users/nzaeh.sh

#Bash History Size
export HISTSIZE=10000
export HISTFILESIZE=10000

export OMP_NUM_THREADS=10

export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
source $VO_CMS_SW_DIR/cmsset_default.sh

grid()
{
        command -v voms-proxy-info &> /dev/null && echo "grid loaded"
        source /cvmfs/grid.cern.ch/emi3ui-latest/etc/profile.d/setup-ui-example.sh
	source /cvmfs/cms.cern.ch/crab3/crab.sh
}

ba()
{
	cmsenv
        cd $CMSSW_BASE/src/
	scram b -j15
	cd -
}

b25()
{
        cd /home/nzaeh/CMSSW_8_0_25/src/
	scram b -j10
	cd -
}
setuproot()
{
	cd /local/scratch/ssd1/nzaeh/
	source python2venv/bin/activate
	export PATH=/usr/local/cuda-8.0/bin/:$PATH
	export PATH=~/bin/:$PATH
	export LD_LIBRARY_PATH=/usr/local/cuda-8.0/:$LD_LIBRARY_PATH	
}

alias voms='voms-proxy-init -voms cms:/cms/dcms -valid 190:00'

alias storage='cd /storage/jbod/nzaeh/'
alias cms20='cd /home/nzaeh/CMSSW_8_0_20/src/'
alias cms21='cd /home/nzaeh/CMSSW_8_0_21/src/'
alias cms25='cd /home/nzaeh/CMSSW_8_0_25/src/'
alias cms26='cd /home/nzaeh/CMSSW_8_0_26_patch1/src/'
alias la='ls -A'
alias la='ls -A'
alias size='du -sch .[!.]* * |sort -h'
