class Tree
  attr_accessor :children, :node_name

  def initialize(h)
    @node_name = h.keys.first
    
    @children = h[@node_name].map { |k, v| Tree.new({k => v}) }
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit
    yield self
  end
end

t = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })

t.visit_all { |n| p n.node_name }
