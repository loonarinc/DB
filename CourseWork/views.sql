/*Представление сортированного списка каталогов*/
CREATE OR replace VIEW cat AS SELECT * FROM catalogs ORDER BY name;
SELECT * FROM cat;

/*Представление сортированного списка производителей*/
CREATE OR replace VIEW man AS SELECT * FROM manufacturers ORDER BY name;
SELECT * FROM man;

/*Представление id, наименования, цены, типа товара сортированного по имени*/
CREATE OR REPLACE VIEW prod AS
SELECT id, name, price, catalog_id
FROM products
ORDER BY name;

SELECT * FROM prod;