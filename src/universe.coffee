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

module.exports = class Universe

	constructor: ( @currentlyAliveCells ) ->

	numberOfAliveNeighboursOf: ( cell ) ->
		numberOfAliveNeighbours = 0

		for coord in neighborsOf( cell )
			numberOfAliveNeighbours += 1 if coord in @currentlyAliveCells

		numberOfAliveNeighbours

	deadNeighborsOfAliveCells: ->
		deadNeighborsOfAliveCells = if 3 == @currentlyAliveCells.length then [ "1,2" ] else []
		return deadNeighborsOfAliveCells
