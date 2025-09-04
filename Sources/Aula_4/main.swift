import Foundation

// ATIVIDADE 1
let meuCarro = Carro(marca: "Toyota", ano: 2020, numeroDePortas: 4)
meuCarro.apresentar()

// ATIVIDADE 2

let minhaMoto: Moto = Moto(marca: "Royal Enfield", ano: 2025, cilindrada: 350)

let veiculos: [Veiculo] = [minhaMoto, meuCarro]

for veiculo in veiculos {
    print(veiculo.detalhes())
}

// ATIVIDADE 3

// Basicamente ja esta sendo feita pelas chamadas anteriores com os inicializadores

