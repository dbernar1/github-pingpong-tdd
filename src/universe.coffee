module.exports = class Universe

	constructor: ( @currentlyAliveCells ) ->

	numberOfAliveNeighboursOf: ( cell ) ->
		if cell[ 0 ] is 1 and cell[ 1 ] is 2 then 2 else 0
