func readMatriz(filePath: String) -> [[Int]]? {
    do {
        let contents = try String(contentsOfFile: filePath)
        let rows = contents.split(separator: "\n")
        var matriz: [[Int]] = []
        for row in rows {
            let columns = row.split(separator: " ").compactMap { Int($0) }
            matriz.append(columns)
        }
        return matriz
    } catch {
        print("Erro ao carregar o arquivo: \(error.localizedDescription)")
        return nil
    }
}