def prime_factors(num)
  return [] if num == 1
  numbers = Array.new
  for i in 2..num
     if num % i == 0
        numbers << i
        return numbers + prime_factors(num/i)
     end
  end
  
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end
  
  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

   it "has factors of [3] for 3" do
      expect(prime_factors(3)).to eq [3]
   end

   it "has factors of [2,2] for 4" do
      expect(prime_factors(4)).to eq [2,2]
   end
   
   it "has factors of [5] for 5" do
      expect(prime_factors(5)).to eq [5]
   end

   it "has factors of [2,3] for 6" do
      expect(prime_factors(6)).to eq [2,3]
   end

   it "has factors of [7] for 7" do
      expect(prime_factors(7)).to eq [7]
   end
   
   it "has factors of [2,2,2] for 8" do
      expect(prime_factors(8)).to eq [2,2,2]
   end
   
   it "has factors of [3,3] for 9" do
      expect(prime_factors(9)).to eq [3,3]
   end
   
   it "has factors of [11] for 11" do
      expect(prime_factors(11)).to eq [11]
   end
   
   it "has factors of [2,2,3,3] for 36" do
      expect(prime_factors(36)).to eq [2,2,3,3]
   end
   
end
