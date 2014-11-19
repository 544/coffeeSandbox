chai = require 'chai'
expect = chai.expect
chai.should() 
# add should method to Object.prototype

Task = require("../src/task").Task

describe 'Task',->
  t = null

  before ->
    t = new Task("foo bar")

  it "expects true is true like Jasmine", ->
    expect(true).be.true

  it "should be true like RSpec", ->
    true.should.be.true

  it "should rutern item string with toString",->
    t.toString().should.equal("foo bar")

  it "should return true with #did after done", ->
    t.did.should.not.be.true
    t.done()
    t.did.should.be.true
