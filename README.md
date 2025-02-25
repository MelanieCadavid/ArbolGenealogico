# Árbol Genealógico en Prolog

Este repositorio contiene un programa en Prolog que modela un árbol genealógico utilizando hechos y reglas para representar relaciones familiares. El código permite consultar relaciones como paternidad, maternidad, abuelos, hermanos, tíos, primos y cónyuges.

## Descripción del Código

El programa está dividido en dos partes principales:

1. **Hechos**: Representan relaciones directas entre individuos, como padres, madres y género.
2. **Reglas**: Definen relaciones familiares más complejas que involucran más de una generación o que requieren inferencia a partir de los hechos.

### Hechos

- **Relaciones de paternidad**: `padre/2`
- **Relaciones de maternidad**: `madre/2`
- **Género de las personas**: `hombre/1` y `mujer/1`

### Reglas

- **Abuelo/Abuela**: `es_abuelo/2` y `es_abuela/2`
- **Hermano/Hermana**: `es_hermano/2` y `es_hermana/2`
- **Tío/Tía**: `es_tio/2` y `es_tia/2`
- **Primo/Prima**: `es_primo/2` y `es_prima/2`
- **Esposo/Esposa**: `es_esposo/2` y `es_esposa/2`

## Ejemplos de Consultas

Puedes realizar consultas en Prolog para obtener información sobre las relaciones familiares. Aquí hay algunos ejemplos:

```prolog
% ¿Es Abraham el abuelo de Bart?
?- es_abuelo(abraham, bart).
true.

% ¿Es Selma la tía de Bart?
?- es_tia(selma, bart).
true.

% ¿Son Bart y Ling primos?
?- es_primo(bart, ling).
true.
```

## Cómo Usar

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/arbol-genealogico-prolog.git
   cd arbol-genealogico-prolog
   ```

2. **Abre el archivo en un intérprete de Prolog**:
   - Puedes usar SWI-Prolog o cualquier otro intérprete compatible.
   - Carga el archivo en el intérprete:
     ```prolog
     ?- [arbol_genealogico].
     ```

3. **Realiza consultas**:
   - Usa las reglas definidas para consultar relaciones familiares.

## Estructura del Repositorio

```
arbol-genealogico-prolog/
│
├── arbol_genealogico.pl   # Código fuente en Prolog
├── README.md              # Este archivo
└── LICENSE                # Licencia del proyecto (opcional)
```

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

¡Gracias por visitar este repositorio! Si tienes alguna pregunta o sugerencia, no dudes en abrir un issue o enviar un pull request.
