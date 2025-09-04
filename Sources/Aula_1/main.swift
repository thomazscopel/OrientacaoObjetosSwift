import Foundation

// Exercicio 1
func retornaFracoes(array: [Int]) -> [Int:Double] {
    let arraySet: Set<Int> = Set(array)
    let total = Double(arraySet.count)
    
    let positivos = Double(arraySet.filter{$0 > 0}.count)
    let negativos = Double(arraySet.filter{$0 < 0}.count)
    let zeros = Double(arraySet.filter{$0 == 0}.count)
    
    let p1 = positivos / total
    let p2 = negativos / total
    let p3 = zeros / total
    
    
    let fracoes: [Int:Double] = [Int(positivos):p1, Int(negativos):p2, Int(zeros):p3]
    
    return fracoes
}


let Array: [Int] = [-1, -2, 3, 5, 0, 0, 0, 4]

print(retornaFracoes(array: Array))


// Exercicio 2
func obterDetalhesVoo() -> (codigo: String, destino: String, pontual: Bool) {
    return (codigo: "G3-1405", destino: "Rio de Janeiro", pontual: true)
}

let detalhesVoo = obterDetalhesVoo()
print("O voo \(detalhesVoo.codigo) com destino a \(detalhesVoo.destino) está com status pontual \(detalhesVoo.pontual)")

// Exercicio 3
func calcularVendasDoDia() -> (produtosVendidos: Int, valorTotal: Double, clienteDestaque: String) {
    return (produtosVendidos: 235, valorTotal: 4750.80, clienteDestaque: "Supermercado ABC")
}

let relatorioDeHoje = calcularVendasDoDia()
print("""
--- Relatório de Vendas [30/08/2025] ---
Produtos Vendidos: \(relatorioDeHoje.produtosVendidos) unidades
Valor Total: R$ \(relatorioDeHoje.valorTotal)
Cliente Destaque do Dia: \(relatorioDeHoje.clienteDestaque)
------------------------------------
""")