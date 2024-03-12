func calcDistance(_ inicio: (Int, Int), _ fim: (Int, Int), _ no: No?) -> Int {
  var distEsq = 0
  var distCima = 0
  var distDir = 0
  var distBaixo = 0
  if let no = no {
      if no.cord == fim {
          return 1
      }
      no.check = true
      var dist = -1
      if let esq = no.esq, !esq.check {
          distEsq = Graph.calc_distance(inicio, fim, esq)
          if distEsq != -1 {
              dist = distEsq + 1
          }
      }
      if let cima = no.cima, !cima.check {
          distCima = Graph.calc_distance(inicio, fim, cima)
          if distCima != -1 {
              if dist == -1 {
                  dist = distCima + 1
              } else {
                  dist = dist > (distCima + 1) ? distCima + 1 : dist
              }
          }
      }
      if let dir = no.dir, !dir.check {
          distDir = Graph.calc_distance(inicio, fim, dir)
          if distDir != -1 {
              if dist == -1 {
                  dist = distDir + 1
              } else {
                  dist = dist > (distDir + 1) ? distDir + 1 : dist
              }
          }
      }
      if let baixo = no.baixo, !baixo.check {
          distBaixo = Graph.calc_distance(inicio, fim, baixo)
          if distBaixo != -1 {
              if dist == -1 {
                  dist = distBaixo + 1
              } else {
                  dist = dist > (distBaixo + 1) ? distBaixo + 1: dist
              }
          }
      }
      no.check = false
      return dist
  }
  return -1
}