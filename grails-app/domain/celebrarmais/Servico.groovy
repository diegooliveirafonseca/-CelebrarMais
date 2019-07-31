package celebrarmais

import celebrarmais.types.TipoEvento

class Servico {
    String nome
    TipoEvento tipoEvento

    static constraints = {
        nome nullable: false
        tipoEvento nullable: false
    }
}
