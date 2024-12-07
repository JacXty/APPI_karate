# 🛠️ **APPI Karate Testing Framework**

Este repositorio contiene las pruebas automatizadas para interactuar con la API de la tienda de mascotas [Swagger Petstore](https://petstore.swagger.io/).

---

## 🏆 **Introducción**

El propósito de este proyecto es implementar pruebas automatizadas utilizando **Karate** para probar las operaciones de la tienda de mascotas en la API de Swagger Petstore. Estas pruebas incluyen la creación de una nueva mascota, actualización de su estado y la validación de información mediante llamadas HTTP GET.

```
project-root/
├── pom.xml                  # Archivo de configuración de Maven
├── src/
│   ├── main/
│   │   └── java/           # Clases de lógica o componentes compartidos
│   └── test/
│       └── java/
│           └── examples/   # Escenarios Karate aquí
│               └── users/
│                   └── users.feature
├── karate-config.js        # Configuración global de Karate
└── README.md               # Documentación del proyecto

```

---

## ⚙️ **Tecnologías utilizadas**

- **Java 17+**
- **Karate Framework**: Para pruebas de API y escenarios de automatización.
- **JUnit 5**: Para la ejecución de pruebas.
- **Maven**: Herramienta de gestión de dependencias y construcción de proyectos.
- **Swagger Petstore API**: La API que estamos utilizando como referencia para las pruebas.

---

## 🛠️ **Configuración**

1. **Java**: Asegúrate de tener Java 17 o una versión compatible instalada.  
2. **Maven**: Debes tener Maven instalado para ejecutar las pruebas.
3. **Karate Framework**: Se agregó como dependencia en el `pom.xml`.

---

## 🖥️ **Instalación**

### Clona el repositorio

```bash
git clone <URL_DEL_REPOSITORIO>

```

---

## Ejecutar Proyecto
```bash
mvn test
```