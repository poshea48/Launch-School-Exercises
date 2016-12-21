class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(test_strand)
    test_array = test_strand.chars
    strand = @strand.chars
    mutations = 0
    strand_length = [test_array.size, strand.size].min
    (0...strand_length).each do |index|
      mutations += 1 if test_array[index] != strand[index]
    end
    
    mutations
  end
end

dna = DNA.new('AGACAACAGCCAGCCGCCGGATT')