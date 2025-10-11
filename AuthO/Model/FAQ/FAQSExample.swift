//
//  FAQSExample.swift
//  AuthO
//
//  Created by Leoni Bernabe on 11/10/25.
//

import Foundation

struct FAQsExample {
    static let all: [FAQModel] = [
        FAQModel(
            id:1,
            question: "¿Qué es la aplicación Xpensa?",
            description: "Xpensa es una herramienta de gestión financiera personal que te ayuda a automatizar el seguimiento de tus gastos, vincular tus cuentas bancarias y generar reportes inteligentes sobre tus hábitos financieros."
        ),
        FAQModel(
            id:2,
            question: "¿Mis datos están seguros?",
            description: "Sí. Toda la información se encripta utilizando estándares bancarios (AES-256) y solo tú tienes acceso a tus datos. Además, utilizamos conexiones HTTPS seguras y nunca compartimos tu información con terceros sin tu consentimiento."
        ),
        FAQModel(
            id:3,
            question: "¿Puedo usar Xpensa sin vincular mi cuenta bancaria?",
            description: "Sí. Puedes registrar tus ingresos y gastos manualmente si no deseas conectar una cuenta bancaria. Aun así, tendrás acceso a las gráficas, reportes y estadísticas."
        ),
        FAQModel(
            id:4,
            question: "¿La aplicación es gratuita?",
            description: "Xpensa ofrece un plan gratuito con funciones esenciales. También hay un plan premium con características avanzadas como reportes personalizados, análisis predictivo y exportación de datos."
        ),
        FAQModel(
            id:5,
            question: "¿En qué dispositivos puedo usarla?",
            description: "Xpensa está disponible para iOS, Android y Web. Tus datos se sincronizan automáticamente entre tus dispositivos."
        ),
        FAQModel(
            id:6,
            question: "¿Puedo exportar mis datos?",
            description: "Sí. Puedes exportar tus registros financieros en formato CSV o PDF desde la sección de configuración."
        )
    ]
}
