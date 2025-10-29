import persona.*
import gimnasia.*

class Club {
    const property predios

    method mejorPredio(persona) {
        return predios.max({cadaPredio => cadaPredio.caloriasQuemadasPorRutinas(persona)})
    }
    method prediosTranquis(persona) {
        return predios.filter({cadaPredio => cadaPredio.esTranqui(persona)})
    }
    method rutinasExigentes(persona) {
        return predios.map({cadaPredio => cadaPredio.rutinaMasExigente(persona)}).asSet()
    }
}

class Predio {
    const property rutinas

    method esTranqui(persona) {
        return rutinas.any({unaRutina => unaRutina.esTranqui(persona)})
    }
    method rutinaMasExigente(persona) {
        return rutinas.max({cadaRutina => persona.caloriasQueQuema(cadaRutina)})
    }
    method caloriasQuemadasPorRutinas(persona) {
        return rutinas.sum({cadaRutina => persona.caloriasQueQuema(cadaRutina)})
    }
}