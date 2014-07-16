module.exports = class Universe

	constructor: ( @currentlyAliveCells ) ->

	numberOfAliveNeighboursOf: ( cell ) ->

		numberOfAliveNeighbours = 0

		x = cell[0]
		y = cell[1]

		# Coordinates of 9 neighboring cells
		neighboringCoords = [
			[x-1, y-1], [x, y-1], [x+1, y-1],
			[x-1, y], [x+1, y],
			[x-1, y+1], [x, y+1], [x+1, y+1]
		]

		# Check for alive cell with each neighboring coordinates
		for aliveCell in @currentlyAliveCells
			for coords in neighboringCoords
				if aliveCell[0] is coords[0] and aliveCell[1] is coords[1]
					numberOfAliveNeighbours += 1

		numberOfAliveNeighbours

	deadNeighborsOfAliveCells: ->
		deadNeighborsOfAliveCells = if 3 == @currentlyAliveCells.length then [ [1, 2] ] else []
		return deadNeighborsOfAliveCells
