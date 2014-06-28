assert = require 'assert'

Life = require '../src/life'
Cell = require '../src/cell'

nextGenerationIs = assert.deepEqual
whenCurrentGenerationIs = Life.nextGenerationOf

describe 'Evolution', ->
	it 'a single live cell dies after an evolution', ->
		nextGenerationIs [], whenCurrentGenerationIs [ [1, 1] ]

	it 'an alive cell with exactly two live neighbors is alive in next generation', ->
		nextGenerationIs [ [1, 2] ], whenCurrentGenerationIs [ [0, 3], [1, 2], [2, 1] ]
