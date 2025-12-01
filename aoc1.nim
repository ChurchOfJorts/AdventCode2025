#Advent Of Code Problem 1
import std/strutils

proc moveDial(dir: char, turns: int) = 
    echo dir, " ", turns

proc decodeInputFile() = 
    for line in lines "aoc1input.txt":
        var dir: char = line[0]
        var turns: int = parseInt(line[1..^1])
        moveDial(dir, turns)

proc main() =
  const START_NUM = 50
  decodeInputFile()

when isMainModule:
  main()
