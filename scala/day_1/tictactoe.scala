class Game(input: String, width: Int) {
  val rows = input.split("").grouped(width).toArray 
  
  def arrayMatches(value: String, arr: Array[String]) : Boolean = {
    return arr.filter(_ == value).size == arr.size
  }

  def checkArr(arr: Array[String]) : String = {
    if (arrayMatches("X", arr)) { return "X" }
    if (arrayMatches("O", arr)) { return "O" }
    return ""
  }

  def checkWon(arr: Array[Array[String]]) : String = {
    for(row <- arr) {
      val winner = checkArr(row)
      if (winner != "") { return winner }
    }
    return ""
  }

  def diagonal(arr: Array[Array[String]]) : Array[String] = {
    var diag = new Array[String](width)
    for(i <- arr.indices) {
      diag(i) = arr(i)(i)
    }
    return diag
  }

  def whoWon() : String = {
    var winner =  ""

    winner = checkWon(rows)
    if (winner != "") { return winner }

    winner = checkWon(rows.transpose) 
    if (winner != "") { return winner }

    winner = checkArr(diagonal(rows)) 
    if (winner != "") { return winner }

    winner = checkArr(diagonal(rows.reverse)) 
    if (winner != "") { return winner }

    return "Nobody"
  }
}

val input = "OXXXXOX X"
val game = new Game(input, 3)

println(game.whoWon())
