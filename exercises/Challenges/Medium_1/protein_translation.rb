# input
#   class method(of_codon) takes 3 letter string => codon
#   class method(of_rna) takes varying length string => RNA strand
#     validate? 3 letters? string? correct letters


# output
#   amnio acid string associated with codon
#   array of amino acids in order left to right reading RNA strand

# rules
#   AMINO_ACIDS = {
#     "Methionine"    => ['AUG'],
#     "Phenylalanine" => ['UUU', 'UUC'],
#     "Leucine"       => ['UUA', 'UUG'],
#     "Serine"        => ['UCU', 'UCC', 'UCA', 'UCG'],
#     "Tyrosine"      => ['UAU', 'UAC'],
#     "Cysteine"      => ['UGU', 'UGC'],
#     "Tryptophan"    => ['UGG'],
#     "STOP"          => ['UAA', 'UAG', 'UGA']
#   }

# algorithm
  
#   def self.of_codon(codon)
#     AMINO_ACIDS.select {|aa, codon_group| codon_group.include?(codon) }.keys
#   end

#   def self.of_rna(strand)
#     strand.chars.each_cons(3).map  do |codon|
#       break if AMINO_ACIDS["STOP"].include?(codon)
#       of_codon(codon)
#     end
#   end
require 'pry'

class InvalidCodonError < SyntaxError; end

class Translation

  AMINO_ACIDS = {
    "Methionine"    => ['AUG'],
    "Phenylalanine" => ['UUU', 'UUC'],
    "Leucine"       => ['UUA', 'UUG'],
    "Serine"        => ['UCU', 'UCC', 'UCA', 'UCG'],
    "Tyrosine"      => ['UAU', 'UAC'],
    "Cysteine"      => ['UGU', 'UGC'],
    "Tryptophan"    => ['UGG'],
    "STOP"          => ['UAA', 'UAG', 'UGA']
  }

  def self.of_codon(codon)
     raise InvalidCodonError if !codon.match(/[UACG]/) || codon.size % 3 != 0
    AMINO_ACIDS.select {|aa, codon_group| codon_group.include?(codon) }.keys.join(' ')
  end

  def self.of_rna(strand)
    list = []
    split_strand(strand).each do |codon|
      break if AMINO_ACIDS["STOP"].include?(codon)
      list << of_codon(codon)
    end
    list
  end

  private

  def self.split_strand(strand)
    strand.chars.each_slice(3).map(&:join)
  end
end

strand = 'AUGUUUUAA'
p Translation.of_rna(strand)






















