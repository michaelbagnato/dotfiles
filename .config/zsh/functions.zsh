weather() {
   if (( $# == 0 )) then
      city=Melbourne
   else
      city=$1
   fi
   curl wttr.in/$city   
}

