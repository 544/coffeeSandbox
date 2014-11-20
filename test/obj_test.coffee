chai = require 'chai'
expect = chai.expect
chai.should()

Obj = require("../src/obj")

describe 'Obj', ->
  t = null

  it "String Arrays join test", ->
    Obj.song.join("..").should.equal("do..re..mi..fa..so")
