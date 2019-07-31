package celebrarmais

class Orcamento {

    Date dataEvento
    Pacote pacote
    Date dateCreated


    static constraints = {
        dataEvento nullable: false
        pacote nullable: false
        dateCreated nullable: false
    }
}
