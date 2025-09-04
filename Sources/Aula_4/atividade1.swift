class Veiculo {
    var marca: String 
    var ano: Int 

    init(marca: String, ano: Int) { // Exercicio 3
        self.marca = marca
        self.ano = ano
    }

    func apresentar() {
        print("Veiculo da marca \(marca) ano \(ano).")
    }

    func detalhes() -> String {
        return "Este é um veiculo"
    }
}

class Carro: Veiculo {
    var numeroDePortas: Int

    init(marca: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(marca: marca, ano: ano) // Exercicio 3
    }

    override func apresentar() {
        print("Marca: \(marca), Ano: \(ano), Portas: \(numeroDePortas)")
    }

    // Atividade 2
    override func detalhes() -> String {
        return "Este é um carro de \(numeroDePortas)"
    }

}