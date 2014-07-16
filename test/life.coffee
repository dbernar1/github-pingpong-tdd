assert = require 'assert'

Life = require '../src/life'

whenCurrentGenerationIs = Life.nextGenerationOf
any = it
nextGenerationContains = ( cell, nextGeneration ) -> assert cell in nextGeneration
nextGenerationDoesNotContain = ( cell, nextGeneration ) -> assert cell not in nextGeneration

describe 'Rules of life', ->
	any 'live cell with fewer than two live neighbours dies, as if caused by under-population', ->
		nextGenerationDoesNotContain "1,1", whenCurrentGenerationIs [ "1,1" ]
		nextGenerationDoesNotContain "1,1", whenCurrentGenerationIs [ "1,1", "1,2" ]

	any 'live cell with two or three live neighbours lives on to the next generation', ->
		nextGenerationContains "1,2", whenCurrentGenerationIs [ "0,3", "1,2", "2,1" ]
		nextGenerationContains "1,2", whenCurrentGenerationIs [ "0,1", "0,3", "1,2", "2,1" ]

	any 'live cell with more than three live neighbours dies, as if by overcrowding', ->
		nextGenerationDoesNotContain "1,2", whenCurrentGenerationIs [ "0,1", "0,3", "1,2", "2,1", "2,3" ]

	any 'dead cell with exactly three live neighbours becomes a live cell, as if by reproduction', ->
		nextGenerationContains "1,2", whenCurrentGenerationIs [ "0,1", "0,3", "2,1" ]
