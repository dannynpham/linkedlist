require_relative '../linked_list'

describe Node do
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }
  let(:node_c) { Node.new('C') }
  let(:node_d) { Node.new('D') }
  let(:node_e) { Node.new('E') }

  it 'returns an array to visualize list' do
    node_a.next = node_b
    expect(Node.list(node_a)).to eq ['A','B']
  end

  it 'appends node to the end of list' do
    Node.push(node_a, node_e)
    expect(node_a.next).to eq node_e
  end

  it 'removes the last node from the list' do
    node_a.next, node_b.next, node_c.next = node_b, node_c, node_d
    Node.pop(node_a)
    expect(Node.tail(node_a)).to eq node_c
  end

  it 'adds new node to the beginning' do
    node_a.next, node_b.next = node_b, node_c
    expect(Node.insert_first(node_a, node_d).value).to eq 'D'
  end
end
