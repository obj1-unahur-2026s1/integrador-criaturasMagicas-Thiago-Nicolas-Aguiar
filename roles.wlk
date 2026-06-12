class Mascota {
    var edad = 0
    method edadDeMascota() = edad
    method nuevaEdadDeMascota(nuevaEdad) {edad = nuevaEdad}

    var tieneCuerno = false
    method tieneCuerno() = tieneCuerno
    method noTieneCuerno() {tieneCuerno = false}

    method esVeterana() = self.edadDeMascota() >= 10
}
object guardian {
    method poderExtra() = 100

    method esExtraordinario(criatura) = criatura.poderMagico() > 50
}
object domador {
    const mascotasDomadas = []
    method domarMascota(mascota) = mascotasDomadas.add(mascota)
    method liberarMascota(mascota) = mascotasDomadas.remove(mascota)

    method poderExtra() = 150 * mascotasDomadas.count( {m => m.tieneCuerno()} )

    method esExtraordinario(criatura) = criatura.poderMagico() >= 15 && mascotasDomadas.all( {m => m.esVeterana()} )
}
object hechicero {
    method poderExtra() = 0

    method esExtraordinario(criatura) = true
}
