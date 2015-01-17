require_relative "caesar.rb"

describe "#caesar_cipher" do
  
  context "when first argument isn't a string" do
    it "complains" do
      expect(caesar_cipher(2345, 3)).to eq("Can't do it! Please provide a string and an integer as arguments.")
    end
  end
  
  context "when second argument isn't an integer" do
    it "complains" do
      expect(caesar_cipher("cat", 5.5)).to eq("Can't do it! Please provide a string and an integer as arguments.")
    end
  end

  it "successfully encrypts capital letters" do
    expect(caesar_cipher("CAT", 3)).to eq("FDW")
  end
  
  it "successfully encrypts lowercase letters" do
    expect(caesar_cipher("cat", 3)).to eq("fdw")
  end
  
  it "doesn't change any non-letter input" do
    expect(caesar_cipher("243 !@#", 3)).to eq("243 !@#")
  end
  
  it "can handle input that mixes all three of these" do
    expect(caesar_cipher("cat 38 CAT $@!", 3)).to eq("fdw 38 FDW $@!")
  end
end