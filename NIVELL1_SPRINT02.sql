#SPRINT02
#EX1.Mostra totes les transaccions realitzades per empreses d'Alemanya.

select transaction.id
FROM transaction
WHERE company_id IN (
 SELECT id
 FROM company
 WHERE country = "Germany") ;
 
select transaction.id
 from transaction
 INNER JOIN company
 ON transaction.company_id = company.id
 WHERE country= "Germany";
 
 #relacionas con company_id(de transaction) y id (de company) las dos tablas,tienes que utilizar IN porque devuelve mas de una fila
 
#EX2.Màrqueting està preparant alguns informes de tancaments de gestió, et demanen que els passis un llistat de les empreses que han realitzat transaccions per una suma superior a la mitjana de totes les transaccions. 
