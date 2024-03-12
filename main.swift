import Foundation

print("Digite o caminho do arquivo contendo a matriz:")
if let filePath = readLine(), let matriz = readMatriz(filePath: filePath) {
    let inicio = getInput(s: "início")
    let fim = getInput(s: "fim")
    print("A menor distância entre \(inicio) e \(fim) é \(calcDistance(inicio, fim, returnNode(Graph.add_node(matriz), inicio)))")
} else {
    print("Caminho do arquivo inválido ou arquivo não encontrado.")
}