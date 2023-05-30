CREATE OR REPLACE PROCEDURE p_alta_empleado (po_v_idEmpleado OUT EMPLEADOS.ID%TYPE, 
    							   pi_v_nombre IN EMPLEADOS.NOMBRE%TYPE, 
   							   pio_v_fechaNac IN OUT EMPLEADOS.FECHANACIMIENTO%TYPE) 
    IS	
    
    v_nombre EMPLEADOS.NOMBRE%TYPE;
    v_nomEmpleadoEx 	NUMBER(1);
    ex_nomEmpleadoEx	EXCEPTION;

BEGIN
    BEGIN
    	SELECT MAX(Id) + 1
    		INTO po_v_idEmpleado
    		FROM Empleados;
	EXCEPTION
        WHEN NO_DATA_FOUND THEN
            po_v_idEmpleado := 1;
    END;

	v_nombre := NVL(pi_v_nombre, 'No registrado');
	pio_v_fechaNac := NVL(pio_v_fechaNac, SYSDATE);

	BEGIN
        SELECT 1
        	INTO v_nomEmpleadoEx
        	FROM Empleados
        	WHERE Nombre = v_nombre;

		RAISE ex_nomEmpleadoEx;

	EXCEPTION
        WHEN NO_DATA_FOUND THEN
        	NULL;
	END;

	INSERT INTO Empleados (Id, Nombre, FechaNacimiento)
    VALUES (po_v_idEmpleado, v_Nombre, pio_v_fechaNac);

EXCEPTION 
    WHEN DUP_VAL_ON_INDEX THEN
    	DBMS_OUTPUT.PUT_LINE('Ya existe un proveedor con ese mismo ID');
	WHEN ex_nomEmpleadoEx THEN
        DBMS_OUTPUT.PUT_LINE('Ya existe un proveedor con ese mismo nombre');

END p_alta_empleado;
/

DECLARE
	v_idEmpleado NUMBER;
	v_fecha	DATE := SYSDATE;
BEGIN
	p_alta_empleado(v_idEmpleado, 'Felipe', v_fecha);
	DBMS_OUTPUT.PUT_LINE(v_idEmpleado);
END;