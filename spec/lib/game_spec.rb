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
	end
end
