val input = List("a", "batman", "car", "dot")

println(input.foldLeft(0)((sum, item) => sum + item.length()))

