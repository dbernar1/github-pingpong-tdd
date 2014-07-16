assert = require 'assert'

Life = require '../src/life'

nextGenerationIs = assert.deepEqual
whenCurrentGenerationIs = Life.nextGenerationOf
any = it

describe 'Rules of life', ->
	any 'live cell with fewer than two live neighbours dies, as if caused by under-population', ->
		nextGenerationIs [], whenCurrentGenerationIs [ [1, 1] ]
		nextGenerationIs [], whenCurrentGenerationIs [ [1, 1], [1, 2] ]

	any 'live cell with two or three live neighbours lives on to the next generation', ->
		nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 3], [1, 2], [2, 1] ]
		nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 1], [0, 3], [1, 2], [2, 1] ]

	any 'live cell with more than three live neighbours dies, as if by overcrowding', ->
		nextGenerationIs [], whenCurrentGenerationIs [ [0, 1], [0, 3], [1, 2], [2, 1], [2, 3] ]

	any 'dead cell with exactly three live neighbours becomes a live cell, as if by reproduction', ->
		nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 1], [0, 3], [2, 1] ]
