class Moto: Veiculo {
    var cilindrada: Int

    init(marca: String, ano: Int, cilindrada: Int) {
        self.cilindrada = cilindrada

        super.init(marca: marca, ano: ano) // Exercicio 3
    }

    override func detalhes() -> String {
        return "Esta é uma moto com \(cilindrada) cilindradas." 
    }
}