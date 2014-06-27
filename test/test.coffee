assert = require 'assert'

Life = require '../src/life'

describe 'Life', ->
	it 'a single live cell dies after an evolution', ->
		Life.inject [ [1, 1] ]
		Life.evolve()
		assert Life.isExtinct()
