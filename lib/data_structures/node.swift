class No {
  let cord: (Int, Int)
  var esq: No? = nil
  var cima: No? = nil
  var dir: No? = nil
  var baixo: No? = nil
  var prox: No? = nil
  var check: Bool = false

  init(cord: (Int, Int)) {
      self.cord = cord
  }
}