# Industrial Instrumentation Standards - Knowledge Base

**Protocolos de optimización, localización y estandarización de activos documentales industriales.**

![Standard](https://img.shields.io/badge/Standard-ISO_9001_Compliant-blue)
![Type](https://img.shields.io/badge/Logic-Vector_Graphics-red)
![Engine](https://img.shields.io/badge/Engine-LuaLaTeX-black)

---

## 1. Alcance Operativo
Este repositorio funciona como un laboratorio de **R&D Documental**. Su objetivo es la migración de documentación técnica obsoleta o escaneada hacia un ecosistema de **Documentación como Código (DaC)**. Mediante el uso de `LaTeX` y `TikZ`, se garantiza la integridad tipográfica, la escalabilidad vectorial y el control de versiones preciso en manuales de instrumentación industrial.

## 2. Metodología de Implementación
El proceso de transformación se basa en tres pilares de ingeniería:

* **Integridad Vectorial:** Rediseño completo de diagramas de panel frontal y esquemáticos internos utilizando la librería `TikZ/PGF`, eliminando la dependencia de mapas de bits de baja resolución.
* **Localización Técnica:** Traducción y adaptación terminológica bajo estándares internacionales de ingeniería, asegurando que la transferencia de conocimiento sea técnica, no literal.
* **Precisión Editorial:** Implementación de maquetación profesional (Tipografía Helvetica/LM Sans, interlineado optimizado para legibilidad en planta) bajo un motor de renderizado `LuaLaTeX`.

---

## 3. Casos de Estudio (Infrastructure Assets)

### Asset 01: Lutron LCR-9083 (Ref. 8007fe)
Optimización completa de la interfaz visual y procedimientos de medición.

<div align="center">
  <img src="projects/lutron-8007fe/imgs/LCR-9083_partes_pro.png" alt="TikZ Vector Mapping" width="85%">
  <p><em>Fig 1. Mapeo vectorial de componentes mediante TikZ. Control de precisión absoluta.</em></p>
</div>

<div align="center">
  <img src="projects/lutron-8007fe/imgs/LCR-9083_portada_pro.png" alt="Front Page" width="45%">
  <img src="projects/lutron-8007fe/imgs/LCR-9083_proc_medicion_pro.png" alt="Procedures" width="45%">
  <p><em>Fig 2. Estructura final: Portada institucional y maquetación de procedimientos operativos.</em></p>
</div>

---

## 4. Gestión de Activos (CLI)
El repositorio utiliza un flujo de trabajo basado en **Makefiles** para la automatización de la compilación y el mantenimiento de versiones.

```bash
# Compilación de la base documental completa
make all

# Generación de instancia específica (Lutron-8007fe)
make build MODEL=lutron-8007fe

# Auditoría de archivos temporales y purga de logs
make clean
