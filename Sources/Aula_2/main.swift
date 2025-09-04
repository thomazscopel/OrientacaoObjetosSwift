import Foundation

// ATIVIDADE 1
struct Livro{
    var titulo: String
    var autor: String
    var anoPublicacao: Int

    func exibirDetalhes() {
        print("Título: \(titulo), Autor: \(autor), Ano de Publicação: \(anoPublicacao)")
    }
}

let livro1 = Livro(titulo: "1984", autor: "George Orwell", anoPublicacao: 1949)
let livro2 = Livro(titulo: "O Senhor dos Anéis", autor: "J.R.R. Tolkien", anoPublicacao: 1954)

livro1.exibirDetalhes()
livro2.exibirDetalhes()


// ATIVIDADE 2
enum estacaoDoAno {
    case primavera
    case verao
    case outono
    case inverno
}

class Calendario {
    static func getMensagem(para estacao: estacaoDoAno) -> String {
        switch estacao {
        case .primavera:
            return "É primavera! As flores estão desabrochando."
        case .verao:
            return "É verão! Hora de ir à praia."
        case .outono:
            return "É outono! As folhas estão caindo."
        case .inverno:
            return "É inverno! Prepare-se para o frio."
        }
    }
}

let mensagemVerao = Calendario.getMensagem(para: .verao)
print(mensagemVerao)

let mensagemInverno = Calendario.getMensagem(para: .inverno)
print(mensagemInverno)

let mensagemPrimavera = Calendario.getMensagem(para: .primavera)
print(mensagemPrimavera)

let mensagemOutono = Calendario.getMensagem(para: .outono)
print(mensagemOutono)


// ATIVIDADE 3
enum StatusPedido {
    case recebido
    case processando
    case enviado
    case entregue
}

class Pedido {
    var id: Int
    var descricao: String
    var status: StatusPedido

    init(id: Int, descricao: String, status: StatusPedido) {
        self.id = id
        self.descricao = descricao
        self.status = status
    }

    func atualizarStatus(novoStatus: StatusPedido) {
        self.status = novoStatus
        print("O status do pedido \(id) foi atualizado para \(status).")
    }
}

let meuPedido = Pedido(id: 1, descricao: "Livro de Swift", status: .recebido)
meuPedido.atualizarStatus(novoStatus: .enviado)
meuPedido.atualizarStatus(novoStatus: .entregue)