"""Lattice paths"""


def paths(valor_n):
    """Calcula las rutas"""
    ruta = 1
    for valor_x in range(1, valor_n + 1):
        ruta = ruta * valor_x
    return ruta


print paths(40)/paths(20)/paths(20)
