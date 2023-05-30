
DECLARE
	v_numero NUMBER(5, 2) := 177.77;

BEGIN
	v_numero := ROUND(v_numero);
	DBMS_OUTPUT.PUT_LINE('El valor de mi número es ' || v_numero);
END;

/
    
DECLARE
	v_numero NUMBER(5, 2) := 177.77;

BEGIN
	v_numero := ROUND(v_numero, 1);
	DBMS_OUTPUT.PUT_LINE('El valor de mi número es ' || v_numero);
END;
/

DECLARE
	v_numero NUMBER(5, 2) := 177.77;

BEGIN
	v_numero := TRUNC(v_numero);
	DBMS_OUTPUT.PUT_LINE('El valor de mi número es ' || v_numero);
END;
/

DECLARE
	v_numero NUMBER(5, 2) := 177.77;

BEGIN
	v_numero := TRUNC(v_numero, 1);
	DBMS_OUTPUT.PUT_LINE('El valor de mi número es ' || v_numero);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';

BEGIN
	v_cadena := SUBSTR(v_cadena, 6);
	DBMS_OUTPUT.PUT_LINE('mi cadena de prueba es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';

BEGIN
	v_cadena := SUBSTR(v_cadena, 6, 6);
	DBMS_OUTPUT.PUT_LINE('mi cadena de prueba es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';
	v_posicion NUMBER(2);
BEGIN
	v_posicion := INSTR(v_cadena, 'cadena');
	DBMS_OUTPUT.PUT_LINE('la posición de la palabra "cadena" es la : ' || v_posicion);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';
BEGIN
	v_cadena := UPPER(v_cadena);
	DBMS_OUTPUT.PUT_LINE('Mi cadena en mayúscula es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';
BEGIN
	v_cadena := REPLACE(v_cadena, 'a', 'o');
	DBMS_OUTPUT.PUT_LINE('Mi cadena con la letra o es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';
BEGIN
	v_cadena := LPAD(v_cadena, 60, '&');
	DBMS_OUTPUT.PUT_LINE('Mi cadena con "&" es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := 'esta es una cadena de prueba';
BEGIN
	v_cadena := RPAD(v_cadena, 60, '&');
	DBMS_OUTPUT.PUT_LINE('Mi cadena con "&" es: ' || v_cadena);
END;
/

DECLARE
	v_cadena VARCHAR2(100) := '12/12/2022';
	v_numero NUMBER(2);
	v_fecha DATE;
BEGIN
	v_fecha := TO_DATE(v_cadena,'DD-MM-YYYY');
	DBMS_OUTPUT.PUT_LINE('Mi cadena transformada a fecha es: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY'));
END;
/

DECLARE
    
	v_cadena VARCHAR2(100) := '12/12/2022';
	v_numero NUMBER(2);
	v_fecha DATE;

BEGIN
    
	DBMS_OUTPUT.PUT_LINE('Mi cadena transformada a fecha es: ' || v_cadena);
	v_fecha := TO_DATE(v_cadena, 'DD-MM-YYYY');

	v_fecha := TRUNC(v_fecha, 'MM');
	DBMS_OUTPUT.PUT_LINE('Mi cadena transformada a fecha es: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY'));

END;
/