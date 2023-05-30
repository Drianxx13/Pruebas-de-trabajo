CREATE TABLE Departamentos (
    ID NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50)
);


CREATE TABLE Empleados (
    ID NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Apellido VARCHAR2(50),
    FechaNacimiento DATE,
    Ciudad VARCHAR2(50),
    Departamento VARCHAR2(50),
    Puesto VARCHAR2(50),
    Salario NUMBER(10, 2)
);


CREATE TABLE Proyectos (
    ID NUMBER PRIMARY KEY,
    Nombre VARCHAR2(100),
    Descripcion VARCHAR2(4000),
    FechaInicio DATE,
    FechaFin DATE
);

INSERT INTO Departamentos (ID, Nombre)
VALUES (1, 'Marketing');

INSERT INTO Departamentos (ID, Nombre)
VALUES (2, 'Ventas');


INSERT INTO Empleados (ID, Nombre, Apellido, FechaNacimiento, Ciudad, Departamento, Puesto, Salario)
VALUES (1, 'Manuel', 'González', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Madrid', 'Marketing', 'Director', 5000);

INSERT INTO Empleados (ID, Nombre, Apellido, FechaNacimiento, Ciudad, Departamento, Puesto, Salario)
VALUES (2, 'Laura', 'Castro', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 'Valladolid', 'Ventas', 'Vendedor', 3500);

INSERT INTO Proyectos (ID, Nombre, Descripcion, FechaInicio, FechaFin)
VALUES (1, 'Pagina web', 'crear una página web para llegar a más clientes y generar más ventas', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

INSERT INTO Proyectos (ID, Nombre, Descripcion, FechaInicio, FechaFin)
VALUES (2, 'Aumento salarial', 'La subida del sueldo de todos los empleados para aumentar su rendimiento', TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-03-30', 'YYYY-MM-DD'));