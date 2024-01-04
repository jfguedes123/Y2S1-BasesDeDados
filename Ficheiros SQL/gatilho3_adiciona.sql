DROP TRIGGER IF EXISTS G;
CREATE TRIGGER G
BEFORE INSERT ON GOLO
FOR EACH ROW
WHEN (NEW.EQUIPAfav NOT IN (SELECT equipaCASA FROM JOGO WHERE ID=NEW.IDjogo) OR (SELECT equipaVIS FROM JOGO WHERE ID=NEW.IDjogo))
BEGIN
SELECT RAISE(ABORT, 'Equipa favorecida pelo golo deve ser uma das equipas a participar no jogo em questão');
END;