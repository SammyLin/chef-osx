cdd(){ cd ~/Desktop/; }

cdg(){ cd ~/github/; }

cdgo(){ cd $GOPATH/src; }

gopath(){ cd $GOPATH; }

gop(){ cd $GOPATH/src; }

dope(){ echo "no doubt"; }

t(){ tail -f $1 | lolcat; }

ff(){ find ./ -name *$1* 2>/dev/null; }

function rm { for i; do if test -d $i; then /bin/rmdir $i; else /bin/rm $i; fi done;}
