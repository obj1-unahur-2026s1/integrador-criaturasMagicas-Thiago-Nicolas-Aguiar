class Criatura {
  var rolActual

  method poderMagico()

  method astucia()

  method rolEnParque() = rolActual
  method cambiarRolEnParque(rolNuevo) {rolActual = rolNuevo}

  method poderOfensivo() = self.poderMagico() * 10 + self.rolEnParque().poderExtra()

  method esExtraordinario() = self.rolEnParque().esExtraordinario()
}
class Hada inherits Criatura{
  var astucioDelHada

  override method astucia() = astucioDelHada
  method astuciaObtenida(obtenida) {astucioDelHada = obtenida}

  var cantidadKmVolados = 2
  method cantidadKmVolados() = cantidadKmVolados.min(25)
  method volarCantidadDe(kilometros) {cantidadKmVolados += kilometros}

  method esAstuta() = self.astucia() > 50
  method puedeVolar() = 10.min(25)

  override method esExtraordinario() = super() && self.puedeVolar()
}
class Duende inherits Criatura{
  override method poderOfensivo() = super() * 0.1
  override method astucia() = 0
}

