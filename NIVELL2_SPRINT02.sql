#NIVELL2
#EX1.En la teva empresa, es planteja un nou projecte per a llançar algunes campanyes publicitàries per a fer competència a la companyia senar institute. Per a això, et demanen la llista de totes les transaccions realitzades per empreses que estan situades en el mateix país que aquesta companyia.

SELECT*
FROM transaction   #seleccionar toda la informacion de las transacciones
 WHERE company_id IN (
 SELECT id                 #subq1-sacar company id que cumplan criteria
 FROM company
 WHERE country = (
  SELECT country        #subq2.criteria country: los paises que tienen el company name x
  FROM company
  WHERE company_name = "Non Institute" ) );
 
#EX2.El departament de comptabilitat necessita que trobis l'empresa que ha realitzat la transacció de major suma en la base de dades.

SELECT company_name
FROM company
 WHERE id = (
 select company_id 
 FROM transaction
 WHERE amount = (
  SELECT max(amount)
  FROM transaction) );
 
