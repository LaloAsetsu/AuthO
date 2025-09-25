//
//  Examples.swift
//  AuthO
//
//  Created by Leoni Bernabe on 25/09/25.
//

import Foundation

struct ExampleCategories {
    static let compras = CategoryModel(id: 1, name: "Compras", icon: "cart.badge.questionmark")
    static let phishing = CategoryModel(id: 2, name: "Phishing", icon: "envelope.badge.shield.half.filled")
    static let apps = CategoryModel(id: 3, name: "Apps", icon: "app.badge.checkmark")
    static let bancos = CategoryModel(id: 4, name: "Bancos", icon: "banknote.fill")
    static let redes = CategoryModel(id: 5, name: "Redes", icon: "person.2.slash.fill")
    static let inversion = CategoryModel(id: 6, name: "Inversión", icon: "chart.line.downtrend.xyaxis")
    static let viajes = CategoryModel(id: 7, name: "Viajes", icon: "megaphone.fill")
    static let identidad = CategoryModel(id: 8, name: "Identidad", icon: "person.crop.circle.badge.exclamationmark")
    static let otra = CategoryModel(id: 999, name: "Otra", icon: "questionmark.circle")

    static let all: [CategoryModel] = [
        compras, phishing, apps, bancos,
        redes, inversion, viajes, identidad, otra
    ]
}

struct ExampleCards {
    static let cards: [CardModel] = [
        CardModel(
            titulo: "Tienda electrónica falsa",
            url: "https://www.alertafraude.mx/reportes/1001",
            imageUrl: "https://images-wixmp-530a50041672c69d335ba4cf.wixmp.com/templates/image/34041b678f8322dd95446ca0e0ee3d4caebb59008a7aa3f8922a8461c268fe6d1617888011678.jpg",
            descripcion: "Ofrecía laptops a precios muy bajos. Los clientes nunca recibieron los productos.",
            categoria: ExampleCategories.compras,
            likes: 124
        ),
        CardModel(
            titulo: "Correo de phishing bancario",
            url: "https://www.alertafraude.mx/reportes/1002",
            imageUrl: "https://mbluxury1.s3.amazonaws.com/2020/07/14065242/BankWAW-website-design.jpg",
            descripcion: "Usuarios recibieron correos que simulaban ser de un banco, solicitando datos de acceso.",
            categoria: ExampleCategories.phishing,
            likes: 312
        ),
        CardModel(
            titulo: "App de descuentos fraudulentos",
            url: "https://www.alertafraude.mx/reportes/1003",
            imageUrl: "https://www.templateshub.net/uploads/1570009401%20CouponDay%20Clean%20Premium%20Coupon%20Template.jpg",
            descripcion: "Una aplicación prometía grandes descuentos, pero robaba datos bancarios.",
            categoria: ExampleCategories.apps,
            likes: 198
        ),
        CardModel(
            titulo: "Falsos créditos inmediatos",
            url: "https://www.alertafraude.mx/reportes/1004",
            imageUrl: "https://themewagon.com/wp-content/uploads/2020/11/credit-1.jpg",
            descripcion: "Un sitio pedía depósitos por 'gastos de gestión' y nunca otorgaba el crédito.",
            categoria: ExampleCategories.bancos,
            likes: 265
        ),
        CardModel(
            titulo: "Perfil falso en redes sociales",
            url: "https://www.alertafraude.mx/reportes/1005",
            imageUrl: "https://miro.medium.com/v2/resize:fit:1400/0*sVJDL0GdqXDxzynj.jpg",
            descripcion: "Cuentas se hacían pasar por celebridades para pedir dinero a seguidores.",
            categoria: ExampleCategories.redes,
            likes: 432
        ),
        CardModel(
            titulo: "Inversión en criptomonedas inexistentes",
            url: "https://www.alertafraude.mx/reportes/1006",
            imageUrl: "https://themewagon.com/wp-content/uploads/2020/11/crypto-1.jpg",
            descripcion: "Un sitio ofrecía inversiones en criptomonedas que no existían.",
            categoria: ExampleCategories.inversion,
            likes: 289
        ),
        CardModel(
            titulo: "Publicidad de viajes falsos",
            url: "https://www.alertafraude.mx/reportes/1007",
            imageUrl: "https://mbluxury1.s3.amazonaws.com/2024/06/25074513/Travel-Website-Design-Tour-Radar.jpg",
            descripcion: "Promocionaban viajes todo incluido a mitad de precio. Nunca se confirmaron boletos.",
            categoria: ExampleCategories.viajes,
            likes: 150
        ),
        CardModel(
            titulo: "Venta de consolas inexistentes",
            url: "https://www.alertafraude.mx/reportes/1008",
            imageUrl: "https://static.vecteezy.com/system/resources/previews/009/521/560/non_2x/online-gaming-concept-website-landing-page-with-game-console-free-illustration-background-free-vector.jpg",
            descripcion: "Prometían entregas inmediatas de consolas en preventa, pero nunca se enviaron.",
            categoria: ExampleCategories.compras,
            likes: 375
        ),
        CardModel(
            titulo: "Correo con archivo sospechoso",
            url: "https://www.alertafraude.mx/reportes/1009",
            imageUrl: "https://www.lifewire.com/thmb/GYpSjFecUJX2Ktls5ZCKPIDvc_g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gmail-select-insert-link-2681bddad62a4b34afe7c732995bd003.jpg",
            descripcion: "Un correo con un supuesto recibo contenía un archivo malicioso.",
            categoria: ExampleCategories.phishing,
            likes: 210
        ),
        CardModel(
            titulo: "Suplantación de identidad en trámites",
            url: "https://www.alertafraude.mx/reportes/1010",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4y9X3Kv9wa0Biax50gBdST0EwkhQPZQG6ow&s",
            descripcion: "Un portal imitaba páginas de gobierno para robar datos personales.",
            categoria: ExampleCategories.identidad,
            likes: 498
        )
    ]
}
