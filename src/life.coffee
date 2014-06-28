add = ( item, to_list ) ->
	to_list.push item

numberOfAliveNeighboursOf = ( cell, currentlyAliveCells ) ->
	if cell[ 0 ] is 1 and cell[ 1 ] is 2 then 2 else 0

module.exports = class Life

	@nextGenerationOf: ( currentlyAliveCells ) ->
		nextGeneration = []

		for cell in currentlyAliveCells
			if 2 is numberOfAliveNeighboursOf( cell, given = currentlyAliveCells )
				add cell, to = nextGeneration

		nextGeneration
