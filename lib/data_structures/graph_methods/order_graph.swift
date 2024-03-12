func orderGraph(_ no: No?) {
  var atual = no
  while atual != nil {
      if let (l, c) = atual?.cord {
          var prox = no
          while prox != nil {
              if let (l2, c2) = prox?.cord {
                  if l == l2 && c - 1 == c2 {
                      atual!.esq = prox
                  }
                  if l - 1 == l2 && c == c2 {
                      atual!.cima = prox
                  }
                  if l == l2 && c + 1 == c2 {
                      atual!.dir = prox
                  }
                  if l + 1 == l2 && c == c2 {
                      atual!.baixo = prox
                  }
              }
              prox = prox!.prox
          }
      }
      atual = atual!.prox
  }
}