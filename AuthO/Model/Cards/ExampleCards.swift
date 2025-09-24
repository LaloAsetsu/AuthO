//
//  ExampleCards.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Foundation

struct ExampleCards {
    static let card1 = CardModel(
        titulo: "Tienda electrónica falsa",
        url: "https://www.alertafraude.mx/reportes/1001",
        imageUrl: "https://images-wixmp-530a50041672c69d335ba4cf.wixmp.com/templates/image/34041b678f8322dd95446ca0e0ee3d4caebb59008a7aa3f8922a8461c268fe6d1617888011678.jpg",
        descripcion: "Ofrecía laptops a precios muy bajos. Los clientes nunca recibieron los productos.",
        categoria: CategoryModel(id: 1, name: "Fraude en compras", icon: "cart.badge.questionmark"),
        likes: 124
    )

    static let card2 = CardModel(
        titulo: "Correo de phishing bancario",
        url: "https://www.alertafraude.mx/reportes/1002",
        imageUrl: "https://www.alertafraude.mx/images/phishing-email.jpg",
        descripcion: "Usuarios recibieron correos que simulaban ser de un banco, solicitando datos de acceso.",
        categoria: CategoryModel(id: 2, name: "Phishing", icon: "envelope.badge.shield.half.filled"),
        likes: 312
    )

    static let card3 = CardModel(
        titulo: "App de descuentos fraudulentos",
        url: "https://www.alertafraude.mx/reportes/1003",
        imageUrl: "https://www.alertafraude.mx/images/fake-app.jpg",
        descripcion: "Una aplicación prometía grandes descuentos, pero robaba datos bancarios.",
        categoria: CategoryModel(id: 3, name: "Apps falsas", icon: "app.badge.checkmark"),
        likes: 198
    )

    static let card4 = CardModel(
        titulo: "Falsos créditos inmediatos",
        url: "https://www.alertafraude.mx/reportes/1004",
        imageUrl: "https://www.alertafraude.mx/images/fake-credit.jpg",
        descripcion: "Un sitio pedía depósitos por 'gastos de gestión' y nunca otorgaba el crédito.",
        categoria: CategoryModel(id: 4, name: "Fraude bancario", icon: "banknote.fill"),
        likes: 265
    )

    static let card5 = CardModel(
        titulo: "Perfil falso en redes sociales",
        url: "https://www.alertafraude.mx/reportes/1005",
        imageUrl: "https://www.alertafraude.mx/images/fake-profile.jpg",
        descripcion: "Cuentas se hacían pasar por celebridades para pedir dinero a seguidores.",
        categoria: CategoryModel(id: 5, name: "Redes sociales falsas", icon: "person.2.slash.fill"),
        likes: 432
    )

    static let card6 = CardModel(
        titulo: "Inversión en criptomonedas inexistentes",
        url: "https://www.alertafraude.mx/reportes/1006",
        imageUrl: "https://www.alertafraude.mx/images/fake-crypto.jpg",
        descripcion: "Un sitio ofrecía inversiones en criptomonedas que no existían.",
        categoria: CategoryModel(id: 6, name: "Estafas de inversión", icon: "chart.line.downtrend.xyaxis"),
        likes: 289
    )

    static let card7 = CardModel(
        titulo: "Publicidad de viajes falsos",
        url: "https://www.alertafraude.mx/reportes/1007",
        imageUrl: "https://www.alertafraude.mx/images/fake-travel.jpg",
        descripcion: "Promocionaban viajes todo incluido a mitad de precio. Nunca se confirmaron boletos.",
        categoria: CategoryModel(id: 7, name: "Publicidad engañosa", icon: "megaphone.fill"),
        likes: 150
    )

    static let card8 = CardModel(
        titulo: "Venta de consolas inexistentes",
        url: "https://www.alertafraude.mx/reportes/1008",
        imageUrl: "https://www.alertafraude.mx/images/fake-console.jpg",
        descripcion: "Prometían entregas inmediatas de consolas en preventa, pero nunca se enviaron.",
        categoria: CategoryModel(id: 1, name: "Fraude en compras", icon: "cart.badge.questionmark"),
        likes: 375
    )

    static let card9 = CardModel(
        titulo: "Correo con archivo sospechoso",
        url: "https://www.alertafraude.mx/reportes/1009",
        imageUrl: "https://www.alertafraude.mx/images/malware-email.jpg",
        descripcion: "Un correo con un supuesto recibo contenía un archivo malicioso.",
        categoria: CategoryModel(id: 2, name: "Phishing", icon: "tray.full.fill"),
        likes: 210
    )

    static let card10 = CardModel(
        titulo: "Suplantación de identidad en trámites",
        url: "https://www.alertafraude.mx/reportes/1010",
        imageUrl: "https://www.alertafraude.mx/images/identity-theft.jpg",
        descripcion: "Un portal imitaba páginas de gobierno para robar datos personales.",
        categoria: CategoryModel(id: 3, name: "Suplantación de identidad", icon: "person.crop.circle.badge.exclamationmark"),
        likes: 498
    )

    static let cards: [CardModel] = [
        card1, card2, card3, card4, card5,
        card6, card7, card8, card9, card10
    ]

}

