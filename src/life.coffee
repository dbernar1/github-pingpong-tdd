Universe = require './universe'

add = ( item, to_list ) ->
	to_list.push item

module.exports = class Life

	@nextGenerationOf: ( currentlyAliveCells ) ->
		universe = new Universe currentlyAliveCells

		nextGeneration = []

		for cell in currentlyAliveCells
			if 2 is universe.numberOfAliveNeighboursOf( cell ) or
				 3 is universe.numberOfAliveNeighboursOf( cell )
				add cell, to = nextGeneration

		nextGeneration
