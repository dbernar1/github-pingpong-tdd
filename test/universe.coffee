assert = require( 'chai' ).assert

Universe = require '../src/universe'

describe 'Universe', ->
	describe '#numberOfAliveNeighboursOf', ->
		it 'knows how many live neighbors a cell has', ->
			universe = new Universe [ "0,3", "1,2", "2,1" ]

			assert.equal 1, universe.numberOfAliveNeighboursOf "0,3"
			assert.equal 2, universe.numberOfAliveNeighboursOf "1,2"
			assert.equal 1, universe.numberOfAliveNeighboursOf "2,1"

	describe '#deadNeighboringCellsOfAliveCells', ->
		it 'is able to determine the set of dead neighbors of currently alive cells', ->
			universe = new Universe [ "2,2", "1,2", "2,1" ]
			assert.sameMembers [
				       "0,1", "0,2", "0,3",
				"1,0", "1,1",        "1,3",
				"2,0",               "2,3",
				"3,0", "3,1", "3,2", "3,3"
			], universe.deadNeighboringCellsOfAliveCells()
