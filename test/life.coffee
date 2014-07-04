assert = require 'assert'

Life = require '../src/life'

nextGenerationIs = assert.deepEqual
whenCurrentGenerationIs = Life.nextGenerationOf

describe 'After an Evolution', ->
	describe 'A live cell', ->
		it 'with 0 live neighbors is dead', ->
			nextGenerationIs [], whenCurrentGenerationIs [ [1, 1] ]

		it 'with exactly 1 live neighbor is dead', ->
			nextGenerationIs [], whenCurrentGenerationIs [ [1, 1], [1, 2] ]

		it 'with exactly two live neighbors is alive', ->
			nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 3], [1, 2], [2, 1] ]

		it 'with exactly three live neighbors is alive', ->
			nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 1], [0, 3], [1, 2], [2, 1] ]

		it 'with more than three live neighbors is dead', ->
			nextGenerationIs [], whenCurrentGenerationIs [ [0, 1], [0, 3], [1, 2], [2, 1], [2, 3] ]

	describe "A dead cell", ->
		it.skip 'with exactly three live neighbors is alive', ->
			nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 1], [0, 3], [2, 1] ]
