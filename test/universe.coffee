assert = require 'assert'

Universe = require '../src/universe'

describe 'Universe', ->
	describe '#numberOfAliveNeighboursOf', ->
		it.skip 'knows how many live neighbors a cell has', ->
			universe = new Universe [ [0, 3], [1, 2], [2, 1] ]

			assert.equal 1, universe.numberOfAliveNeighboursOf [0, 3]
			assert.equal 2, universe.numberOfAliveNeighboursOf [1, 2]
			assert.equal 1, universe.numberOfAliveNeighboursOf [2, 1]
