# Create ls and dir aliases
#type -t gls > /dev/null
#switch $status

#  case 0
#    function ls
#      command gls -FBh --color=auto $argv
#    end

#    function dir
#      command gls -lFBh --color=auto $argv
#    end

#  case '*'
    function ls
      command ls -FGBh $argv
    end

    function l
      command ls -GlaFBh $argv
    end

#end
