DO $$
	DECLARE NuevoIdMoneda INTEGER; --Declaramos la variable que nos servira para asignar las IDs
BEGIN
	NuevoIdMoneda := 1;
	--Creamos la nueva tabla (Del nuevo modelo relacional) Moneda solo si no existe
	CREATE TABLE IF NOT EXISTS Moneda (
    	Id INT PRIMARY KEY,
    	Moneda VARCHAR(255) NOT NULL,
    	Sigla VARCHAR(10),
    	Imagen VARCHAR(255)
	);

	--Verificamos y agregamos las nuevas columnas 'idMoneda', 'Mapa' y 'Bandera' en la tabla pais (Solo si no existen)
	ALTER TABLE Pais --Altera la tabla pais añadiendo las columnas faltantes
		ADD COLUMN IF NOT EXISTS IdMoneda VARCHAR(100),
		ADD COLUMN IF NOT EXISTS Mapa VARCHAR(255),
		ADD COLUMN IF NOT EXISTS Bandera VARCHAR(255);

	--Se insertan los valores de las monedas manualmente
	--Ademas isertamos una id acumulativa y no automatica como se pidio

    IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda + 1) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen)
		VALUES (NuevoIdMoneda, 'DOLAR AUSTRALIANO', 'AUD', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'DOLAR CANADIENSE', 'CAD', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;

	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'GUARANI', 'PYG', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'EURO', 'EUR', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO CHILENO', 'CLP', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'NUEVO BOLIVAR', 'VED', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'REAL', 'BRL', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'NUEVO SOL', 'PEN', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO BOLIVIANO', 'BOB', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'LIBRA ', 'GBP ', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO DOMINICANO', 'DOP', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'COLON', 'CRC', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'DOLAR', 'USD', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'BALBOA', 'PAB', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO ARGENTINO', 'ARS', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'QUETZAL', 'GTQ', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO', '???', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO MEXICANO', 'MXN', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO URUGUAYO', 'UYU', '');
		NuevoIdMoneda := NuevoIdMoneda + 1;
    END IF;
	
	IF NOT EXISTS (SELECT 1 FROM Moneda WHERE Id = NuevoIdMoneda) THEN
        INSERT INTO Moneda (Id, Moneda, Sigla, Imagen) 
		VALUES (NuevoIdMoneda, 'PESO COLOMBIANO', 'COP', '');
    END IF;

	-- Vinculamos las columnas idMonedas de ambas tablas (moneda y pais) para relacionarlas
	-- Este paso funciona antes de eliminar la columna monedas ya que es la que hace de relacionador
	IF EXISTS (
	  	SELECT 1 FROM information_schema.columns 
		WHERE table_name = 'pais' 
		AND column_name = 'moneda') THEN
		  	UPDATE Pais
		  	SET idMoneda = Moneda.Id
		 	FROM Moneda
		 	WHERE Pais.moneda = Moneda.moneda
			AND Pais.idMoneda IS NULL; 
	END IF;

	--Elimina la columna 'moneda' en la tabla pais (ya que es lo que se pide en el modelo relacional)
	ALTER TABLE pais DROP COLUMN IF EXISTS Moneda;
	
/*Nota: Si se desea continuar agregando monedas y relacionando las id, recomiendo ovbiar este ultimo alter table
para que no hayan problemas, una vez se tengan las relaciones deseadas se puede usar para retirar la columna.

En general el algoritmo cumple cada funcion pedida, y crea la relacion al pie de la letra sin presentar un solo error
solo notifica aquellas acciones ya realizadas y las omite, pero siempre podra ejecutarse sin errores*/
END $$;

--Crear consultas para verificar que todo este en orden c: --