#Advent Of Code Problem 1

proc processInputFile() = 
    for line in lines "aoc1input.txt":
        echo line

proc main() =
  const START_NUM = 50
  processInputFile()

when isMainModule:
  main()
