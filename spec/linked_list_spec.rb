require_relative '../linked_list'

n0 = Node.new('A')
n1 = Node.new('B')
n2 = Node.new('C')
n3 = Node.new('D')
n4 = Node.new('E')
n5 = Node.new('F')
n0.next = n1
n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5

describe Node do
  let(:A,:B,:C,:D,:E,:F){n0,n1,n2,n3,n4,n5}
  
end
