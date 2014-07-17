neighborsOf = ( cell ) ->
	[ x, y ] = cell.split ","
	x = parseInt x
	y = parseInt y

	neighboringCoords = [
		[x-1, y-1], [x, y-1], [x+1, y-1],
		[x-1, y], [x+1, y],
		[x-1, y+1], [x, y+1], [x+1, y+1]
	].map (coord) ->
		"#{coord[0]},#{coord[1]}"

add = ( item, to_list ) ->
	to_list.push item

module.exports = class Universe

	constructor: ( @currentlyAliveCells ) ->

	numberOfAliveNeighboursOf: ( cell ) ->
		numberOfAliveNeighbours = 0

		for coord in neighborsOf( cell )
			numberOfAliveNeighbours += 1 if coord in @currentlyAliveCells

		numberOfAliveNeighbours

	deadNeighboringCellsOfAliveCells: ->
		deadNeighboringCells = []

		for aliveCell in @currentlyAliveCells
			for neighboringCell in neighborsOf( aliveCell )
				if neighboringCell not in @currentlyAliveCells and neighboringCell not in deadNeighboringCells
					add neighboringCell, to = deadNeighboringCells

		deadNeighboringCells
