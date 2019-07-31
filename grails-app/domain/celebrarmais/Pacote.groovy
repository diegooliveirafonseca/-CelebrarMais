package celebrarmais

class Pacote {

    String nome
    BigDecimal valor

    static constraints = {
        nome nullable: false
        valor nullable: false
    }
}
