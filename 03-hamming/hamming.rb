
class Hamming
  def self.compute(strand1, strand2)
    point_mutations = 0
    strand1 = strand1.chars
    strand2 = strand2.chars
    if strand1.length != strand2.length
      raise ArgumentError.new('Strands are not the same length.')
    else
      strand1.each_with_index do |base, i|
        if strand1[i] != strand2[i]
          point_mutations += 1
        end
      end
      return point_mutations
    end
  end
end

# puts Hamming.compute('GGACTGb', 'GGACTGA')
