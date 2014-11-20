chai = require 'chai'
expect = chai.expect
chai.should()

Func = require("../src/func")

describe 'Func', ->
  t = null

  it "expect 1^2 is 1", ->
    Func.square(1).should.equal(1)

  it "expect 2^2 is 4", ->
    Func.square(2).should.equal(4)

  it "expect 2^3 is 8", ->
    Func.cube(2).should.equal(8)

  it "fill func is Stiring filling...", ->
    Func.fill("cup","tea").should.equal("Filling the cup with tea")

  it "Fill func default arg is coffee", ->
    Func.fill("cup").should.equal("Filling the cup with coffee")
