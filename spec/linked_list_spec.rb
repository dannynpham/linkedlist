require_relative '../linked_list'

describe Node do
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }
  let(:node_c) { Node.new('C') }
  let(:node_d) { Node.new('D') }
  let(:node_e) { Node.new('E') }

  describe 'list' do
    it 'returns an array to visualize list' do
      node_a.next = node_b
      expect(Node.list(node_a)).to eq ['A','B']
    end
  end

  describe 'push' do
    it 'appends node to the end of list' do
      Node.push(node_a, node_e)
      expect(node_a.next).to eq node_e
    end
  end

  describe 'pop' do
    it 'removes the last node from the list' do
      node_a.next, node_b.next, node_c.next = node_b, node_c, node_d
      Node.pop(node_a)
      expect(node_a.next.next).to eq node_c
    end
  end

  describe 'insert_first' do
    it 'adds new node to the beginning' do
      node_a.next, node_b.next = node_b, node_c
      expect(Node.insert_first(node_a, node_d).value).to eq 'D'
    end
  end

  describe 'remove_first' do
    it 'removes the first node from the list' do
      node_a.next, node_b.next, node_c.next = node_b, node_c, node_d
      Node.remove_first(node_a)
      expect(node_a.next).to eq nil
    end
  end

  describe 'insert' do
    it 'insert a new node at position index' do
      node_a.next, node_b.next = node_b, node_c
      Node.insert(node_a, node_d, 1)
      expect(Node.list(node_a)).to eq ['A','B','D']
    end
  end

  describe 'object_with_value' do
    it 'returns object with matching value' do
      node_a.next, node_b.next = node_b, node_c
      expect(Node.object_with_value(node_a, 'C')).to eq node_c
    end

    it 'returns nil if value is not in list' do
      node_a.next, node_b.next = node_b, node_c
      expect(Node.object_with_value(node_a, 'F')).to eq nil
    end
  end

  describe 'reverse' do
    it 'returns the list in reverse' do
      node_a.next, node_b.next, node_c.next = node_b, node_c, node_d
      Node.reverse(node_a)
      expect(Node.list(node_d)).to eq ['D','C','B','A']
    end
  end

end
