class Graph {
  static func add_node(_ matriz: [[Int]]) -> No? {
      return addNode(matriz)
  }

  static func order_graph(_ no: No?) {
      orderGraph(no)
  }

  static func return_node(_ no: No?, _ cord: (Int, Int)) -> No? {
      return returnNode(no, cord)
  }

  static func calc_distance(_ inicio: (Int, Int), _ fim: (Int, Int), _ no: No?) -> Int {
      return calcDistance(inicio, fim, no)
  }
}