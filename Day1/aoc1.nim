#Advent Of Code Problem 1
import std/strutils

proc moveDial(dialNum: int, dir: char, turns: int): int = 
    result = dialNum
    if dir == 'R':
        result = ((((dialNum + turns) mod 100) + 100) mod 100)
        echo "Move ",turns," right to ", result
    elif dir == 'L':
        result = ((((dialNum - turns) mod 100) + 100) mod 100)
        echo "Move ",turns," left to ", result
    else:
        echo "error"
    return result

proc main() =
    var dialNum: int = 50
    var zeroCounter: int = 0
    echo "Starting: ", dialNum
    #Process the input line by line
    for line in lines "aoc1input.txt":
        var dir: char = line[0]
        var turns: int = parseInt(line[1..^1])
        dialNum = moveDial(dialNum, dir, turns)
        if (dialNum == 0):
            zeroCounter = zeroCounter + 1
        echo "Zeros: ", zeroCounter

when isMainModule:
    main()
