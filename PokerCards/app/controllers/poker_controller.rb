class PokerController < ApplicationController

  def index
    # deck = ['CA','C2','C3','C4','C5','C6','C7','C8','C9','C10','CJ','CQ','CK','DA','D2','D3','D4','D5','D6','D7','D8','D9','D10','DJ','DQ','DK', 'HA','H2','H3','H4','H5','H6','H7','H8','H9','H10','HJ','HQ','HK', 'SA','S2','S3','S4','S5','S6','S7','S8','S9','S10','SJ','SQ','SK']
    # deck = ['CA','C2','C3','C4','C5','C6','C7','C8','C9','C10','CJ','CQ','CK','DA','D2','D3','D4','D5','D6','D7','D8','D9','D10','DJ','DQ','DK', 'HA','H2','H3','H4','H5','H6','H7','H8','H9','H10','HJ','HQ','HK', 'SA','S2','S3','S4','S5','S6','S7','S8','S9','S10','SJ','SQ','SK']
    suit = ['clubs','spades','hearts', 'diamonds']
    value = ['ace','2','3','4','5','6','7','8','9','10','jack','queen','king']
    deck = suit.product(value)
    card=Array.new
    @hand=Array.new


    # for i in 0..5
    #   slot[i]=rand(53)
    #   hand[i]=deck[slot[i]]
    #   puts deck[slot]
    #   deck.delete(slot)
    # end

    for i in 0..4
      card=deck.sample
      @hand[i]="/assets/"+card[1]+"_of_"+card[0]+".png"
      deck.delete(card)
    end

    # render(text: "<html><h1>#{greeting}!</h1><p>It rained a bit.</p></html>")

  end

end

