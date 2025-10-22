class Rutina {
    
    method intensidad() {
        return
    }
    method descanso(tiempo) {
        return
    }
    method caloriasAQuemar(tiempo) {
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }
}

class Running inherits Rutina {
    const intensidad 
    
    override method intensidad() {
        return intensidad
    }
    override method descanso(tiempo) {
        if (tiempo > 20) {
            return 5
        }
        else return 2
    }
}
class Maraton inherits Running {
    override method caloriasAQuemar(tiempo) {
        return super(tiempo) * 2
    }
}
class Remo inherits Rutina {
    override method intensidad() {
        return 1.3
    }
    override method descanso(tiempo) {
        return tiempo / 5
    }
}
class RemoDeCompeticion inherits Remo {
    override method intensidad() {
        return 1.7
    }
    override method descanso(tiempo) {
        return ((tiempo / 5) - 3).max(2)
    }
}