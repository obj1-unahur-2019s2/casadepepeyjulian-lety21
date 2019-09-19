import cosas.*

object casaDePepeYJulian {
    const cosas = []

method comprar(cosa){ cosas.add(cosa)}
method cantidadDeCosasCompradas(){return cosas.size()}
method tieneComida(){return cosas.any({cosa => cosa.esComida()})}
method vieneDeEquiparse(){ return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
}
method esDerrochona(){return cosas.sum({e => e.precio()}) >= 9000}
method compraMasCara(){ return cosas.max({cosa => cosa.precio()})}
method electrodomesticosComprados(){return cosas.filter({cosa => cosa.esElectrodomestico()})}
method malaEpoca(){}
method queFaltaComprar(lista){return lista.filter{deseo => not cosas.contains(deseo)}}

method faltaComida(){return cosas.filter({cosa => cosa.cantidadDeCosasCompradas()})}

method comidaComprada() {}
method gastoEnComida() {return cosas.filter({cosa=> cosa.esComida()}).sum()}
}
//method preciosDeElectrodomesticos(cosas){return cosas.filter({electro})}