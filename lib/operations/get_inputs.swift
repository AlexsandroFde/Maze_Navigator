func getInput(s: String) -> (Int, Int) {
  print("Digite as coordenadas de \(s) (linha, coluna), separadas por espaço:")
  if let startInput = readLine()?.split(separator: " ").compactMap({ Int($0) }), startInput.count == 2 {
      return (startInput[0], startInput[1])
  } else {
      print("Entrada inválida. Por favor, insira as coordenadas no formato correto.")
      return getInput(s: s)
  }
}
