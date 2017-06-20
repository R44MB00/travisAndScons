import scala.collection.mutable.ArrayBuffer
import scala.io.Source
import scala.collection.mutable.HashMap
import scala.collection.mutable.{ Set => MSet }
import scala.collection.mutable.Queue

object Main extends App {

  def levDist(s1: String, s2: String): Int = {
    val d = Array.ofDim[Int](s1.length + 1, s2.length + 1)
    for (i <- (1 to s1.length))
      d(i)(0) = i
    for (j <- (1 to s2.length))
      d(0)(j) = j
    for (
      j <- (0 until s2.length);
      i <- (0 until s1.length)
    ) {
      if (s1(i) == s2(j))
        d(i + 1)(j + 1) = d(i)(j)
      else
        d(i + 1)(j + 1) = List(d(i)(j + 1) + 1,
          d(i + 1)(j) + 1,
          d(i)(j) + 1).min
    }
    d(s1.length)(s2.length)
  }

  def deletedChars(w: String): List[String] = {
    for (i <- (0 until w.length).toList) yield {
      w.toList
        .zipWithIndex
        .filter(p => p._2 != i)
        .map(_._1).mkString
    }
  }

  def replacedChars(w: String): List[String] = {
    for (
      i <- (0 until w.length).toList;
      c <- 'a' to 'z'
    ) yield {
      w.toList
        .zipWithIndex
        .map { case (x, n) => if (n == i) c else x }
        .mkString
    }
  }

  def insertedChars(w: String): List[String] = {
    for (
      i <- (0 to w.length).toList;
      c <- 'a' to 'z'
    ) yield {
      val (pre, post) = w.toList.splitAt(i)
      (pre ::: c :: post).mkString
    }
  }

  def computeFriends(s: String, vocabWords: Set[String]): Set[String] = {
    (deletedChars(s) ::: replacedChars(s) ::: insertedChars(s))
      .filter(w => vocabWords contains w)
      .toSet
  }

  def networkSize(s: String, vocabWords: Set[String]): Int = {
    var friends = MSet[String](s)
    val searchQueue = Queue[String](s)
    while (!searchQueue.isEmpty) {
      val curWord = searchQueue.dequeue()
      val curFriends = computeFriends(curWord, vocabWords)
      val newFriends = curFriends diff friends
      searchQueue.enqueue(newFriends.toSeq : _*)
      friends = friends ++ newFriends
    }
    friends.size
  }

  val InputDelimter = "END OF INPUT"
  val src = Source.fromFile(args(0))
  val lines = src.getLines.filter(_.length > 0)
  val ib = new ArrayBuffer[String]
  val vb = new ArrayBuffer[String]
  var cur = ib
  for (l <- lines) {
    if (l == InputDelimter)
      cur = vb
    else
      cur.append(l)
  }
  val inputWords = ib.toVector
  val vocabWords = vb.toSet
  for (w <- inputWords) {
    println(networkSize(w, vocabWords))
  }

}
