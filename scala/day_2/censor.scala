import scala.io.Source

val content = Source.fromFile("badwords.csv").getLines.map(_.split(","))
val censorWords = scala.collection.mutable.Map[String,String]()
for(line <- content) censorWords(line(0)) = line(1)

trait Censor {
  def filter(word: String) = if(censorWords.contains(word)) censorWords(word) else word
}

class Parser() extends Censor {
  def parse(text: List[String]) = text.foldLeft("")((s,w) => s + " " + filter(w))
}

val input = List("God", "Darn", "I", "Will", "Shoot", "You", "Down")
val parser = new Parser
val output = parser.parse(input)
println(output)
