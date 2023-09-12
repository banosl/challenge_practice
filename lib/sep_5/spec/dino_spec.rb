require './lib/dino.rb'
require 'pry'

RSpec.describe Dino do
  let(:dino_data) { [
    { "name"=>"DinoA", "category"=>"herbivore", "period"=>"Cretaceous", "diet"=>"plants", "age"=>100 },
    { "name"=>"DinoB", "category"=>"carnivore", "period"=>"Jurassic", "diet"=>"meat", "age"=>80 }
  ] }

  let(:dino_a) { Dino.new(dino_data[0]) }
  let(:dino_b) { Dino.new(dino_data[1]) }

  describe '#set_health' do
    it 'sets the dino health after initializing' do
      expect(dino_a.set_health).to eq(0)
      expect(dino_b.set_health).to eq(20)
    end
  end

  describe '#herbivore?' do
    it 'determines if the dino is an herbivore when category is herbivore and diet is plants' do
      expect(dino_a.herbivore?).to be(true)
      expect(dino_b.herbivore?).to be(false)
    end
  end

  describe '#carnivore?' do
    it 'determines if the dino is a carnivore when category is carnivore and diet is meat' do
      expect(dino_a.carnivore?).to be(false)
      expect(dino_b.carnivore?).to be(true)
    end
  end

  describe '#comment' do
    it 'Determines if the dino is alive or dead from its health' do
      expect(dino_a.comment).to eq("Dead")
      expect(dino_b.comment).to eq("Alive")
    end
  end

  describe '#age_metrics' do
    it 'determines age metrics from age and comment' do
      expect(dino_a.age_metrics).to eq(0)
      expect(dino_b.age_metrics).to eq(40)
    end
  end
end