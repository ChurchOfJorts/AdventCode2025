#Advent Of Code Problem 1
import std/strutils

proc moveDial(dir: char, turns: int) = 
    echo turns
    if dir == 'R':
        echo 'R', (dialNum + turns)
    elif dir == 'L':
        echo 'L', (dialNum - turns)
    else:
        echo "error"

proc main() =
    var dialNum: int = 50

    #Process the input line by line
    for line in lines "aoc1input.txt":
        var dir: char = line[0]
        var turns: int = parseInt(line[1..^1])
        moveDial(dir, turns)

when isMainModule:
  main()
