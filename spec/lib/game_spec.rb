require "spec_helper"
require "game"

describe Game do
	describe "Show the use of roll and score methods" do
		let (:g1) { g1 = Game .new }
	    def roll_many_times(n, pins)
			n.times do
				g1.roll(pins)
	    	end
	    end
		it 'can roll a perfect game' do
			roll_many_times(12, 10)
			expect(g1.score).to eq(300)
		end
		it 'can roll a spare at last frame' do
			g2 = Game.new
		    #frame1
		    g2.roll(5)
		    g2.roll(5) #spare
		    #frame2
		    g2.roll(3)
		    g2.roll(4)
		    #frame3
		    g2.roll(10) #strike
		    #frame4
		    g2.roll(5)
		    g2.roll(3)
		    #frame5
		    g2.roll(7)
		    g2.roll(3) #spare
		    #frame6
		    g2.roll(10) #strike
		    #frame7
		    g2.roll(8)
		    g2.roll(2) #spare
		    #frame8
		    g2.roll(2)
		    g2.roll(2)
		    #frame9
		    g2.roll(4)
		    g2.roll(6) #spare
		    #frame10
		    g2.roll(8)
		    g2.roll(2) #spare
		    g2.roll(5) #row3
		    expect(g2.score).to eq(135)
	    end
	end
end
