# Get the weather for a given city
function weather
   if test (count $argv) -ne 1 
      echo "Usage: weather [city]"
   else
    curl wttr.in/$argv
   end
end
