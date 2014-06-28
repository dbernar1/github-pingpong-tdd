assert = require 'assert'

Life = require '../src/life'

describe 'Life', ->
	it.skip 'a single live cell dies after an evolution', ->
		Life.inject [ [1, 1] ]
		Life.evolve()
		assert Life.isExtinct()

	it.skip 'a cell with exactly two live neighbors survives an evolution', ->
		Life.inject [ [1, 1], [1, 2], [2, 1] ]
		Life.evolve()
		assert ! ( Life.isExtinct() )
	describe '.thereAreNo', ->
		it 'is true when the parameter is an empty array', ->
			assert Life.thereAreNo []
