CREATE PROCEDURE booksCatalogs()
BEGIN
    SELECT EXTRACTVALUE(xml_doc,'/catalog/book[1]/author') author
	FROM catalogs
    ORDER BY author;
END