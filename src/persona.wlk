import gimnasia.*

class Persona {
    var property peso

    method tiempoDeEjercicio()
    method caloriasPorKiloPerdido()
    method hacerRutina(rutina)
    method caloriasQueQuema(rutina) {
        return rutina.caloriasAQuemar(self.tiempoDeEjercicio())
    }

    method pesoPerdidoConRutina(rutina) {
        return  self.caloriasQueQuema(rutina) / self.caloriasPorKiloPerdido()
    }
}
class PersonaSedentaria inherits Persona {
    const tiempoDeEjercicio

    override method tiempoDeEjercicio() {
        return tiempoDeEjercicio
    }
    override method caloriasPorKiloPerdido() {
        return 7000
    }
    override method hacerRutina(rutina) {
        if (peso > 50) {
            peso = (peso - self.pesoPerdidoConRutina(rutina)).truncate(3)
        }
    }
}
class PersonaAtleta inherits Persona {

    override method tiempoDeEjercicio() {
        return 90
    }
    override method caloriasPorKiloPerdido() {
        return 8000
    }
    override method hacerRutina(rutina) {
        if (rutina.caloriasAQuemar(self.tiempoDeEjercicio()) > 10000) {
            peso = (peso - self.pesoPerdidoConRutina(rutina) + 1).truncate(3)
        }
    }
}