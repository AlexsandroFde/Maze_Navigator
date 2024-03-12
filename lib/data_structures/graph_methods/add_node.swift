func addNode(_ matriz: [[Int]]) -> No? {
  var primeiroNo: No? = nil
  var NoAnterior: No? = nil

  for l in 0..<matriz.count {
      for c in 0..<matriz[l].count where matriz[l][c] != 1 {
          let no = No(cord: (l, c))
          if primeiroNo == nil {
              primeiroNo = no
          }
          if let anterior = NoAnterior {
              anterior.prox = no
          }
          NoAnterior = no
      }
  }
  Graph.order_graph(primeiroNo)
  return primeiroNo
}