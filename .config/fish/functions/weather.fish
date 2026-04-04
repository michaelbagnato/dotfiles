function weather 
    set -l weather_client http --body
    
    if test (count $argv) -ne 1
        echo "Usage: weather [city]"
        return 1
    end

    $weather_client wttr.in/$argv[1]
end
