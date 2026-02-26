# Instrumentation Manuals Pro 🛠️

**Optimización y localización técnica de manuales industriales.**

Este repositorio contiene muestras de rediseño, traducción y optimización de documentación técnica para instrumentos de medición (especialidad en Lutron), utilizando **LaTeX** para garantizar una precisión editorial de grado industrial.

---

## 🚀 Características del Proyecto

- **Rediseño Editorial:** Conversión de manuales escaneados o Word a PDFs vectoriales de alta calidad.
- **Localización Técnica:** Traducción precisa de términos de ingeniería (Inglés - Español).
- **Gráficos Técnicos:** Creación de tablas y esquemas optimizados.
- **Automatización:** Sistema de compilación basado en `Makefile` para gestión de múltiples proyectos.

## 📁 Estructura del Repositorio

- `projects/`: Contiene los manuales organizados por modelo.
  - `src/`: Código fuente en LaTeX.
  - `original/`: Documento base de fábrica para comparación.

## 🛠️ Cómo compilar

Si tienes un entorno LaTeX instalado (como TeX Live en Fedora), puedes generar los manuales fácilmente:

```bash
# Compilar todo el portafolio
make

# Compilar un modelo específico
make lutron-8007fe

# Limpiar archivos temporales
make clean
```

---

## 📄 Muestras (Samples)

Haz clic para ver el rediseño comparado con el original:

- **Lutron 8007fe:** - [Original (Manual de Fábrica)](projects/lutron-8007fe/original/8007fe.pdf)
  - [Rediseño Pro (LaTeX)](projects/lutron-8007fe/src/plantilla_lutron.pdf)
