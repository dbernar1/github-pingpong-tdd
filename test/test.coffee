assert = require 'assert'

Life = require '../src/life'
Cell = require '../src/cell'

describe 'Life', ->
	it.skip 'a single live cell dies after an evolution', ->
		Life.inject [ [1, 1] ]
		Life.evolve()
		assert Life.isExtinct()

	it.skip 'a cell with exactly two live neighbors survives an evolution', ->
		Life.inject [ [1, 1], [2, 2], [3, 3] ]
		Life.evolve()
		assert.equal Life.numberOfLiveCells, 1

	describe '.thereAreNo', ->
		it 'is true when the parameter is an empty array', ->
			assert Life.thereAreNo []

		it 'is false when the parameter is a none empty array', ->
			assert !( Life.thereAreNo [ [1, 1] ] )

describe 'Cell', ->	
	cell1 = new Cell
	it 'should know how many live neighbors it has', ->
		cell1.numberOfLiveNeighbors( 2 )
		assert.equal cell1.numberOfLiveNeighbors, 2
