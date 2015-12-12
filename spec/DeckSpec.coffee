assert = chai.assert

describe 'Hand', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      assert.strictEqual deck.last(), hand.hit()
      assert.strictEqual deck.length, 49
  describe 'Deck', ->
    it 'should have 52 cards'
    it "should have unique values", ->
    collection = new Deck()
    test = true
    collection.each (card) ->
      count = 0
      collection.each (subCard) ->
        if subCard.get("rank") == card.get("rank") and subCard.get("suitName") == card.get("suitName")
          count++ 
      if count > 1
        test = false

    expect(test).to.be.true 

   it 'should have a dealPlayer'
   it 'after calling dealPlayer it should have 2 fewer cards'
   