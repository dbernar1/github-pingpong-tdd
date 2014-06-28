module.exports = class Life

	@cellsWithAliveNeighbors: []

	@inject: ( aliveCells ) ->
		@cellsWithAliveNeighbors = @neighborsOf aliveCells
	@evolve: ->
		cellsThatShouldLiveOn = []
		for cell in @cellsWithAliveNeighbors
			if cell.shouldLiveOn()
				add cell, to = cellsThatShouldLiveOn

		@cellsWithAliveNeighbors = @neighborsOf cellsThatShouldLiveOn

	@isExtinct: ->
		@thereAreNo @cellsWithAliveNeighbors
