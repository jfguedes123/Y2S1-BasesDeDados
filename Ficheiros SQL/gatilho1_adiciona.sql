DROP TRIGGER IF EXISTS T;
CREATE TRIGGER T
AFTER DELETE ON JOGADOR
FOR EACH ROW
WHEN ((SELECT COUNT(*) FROM JOGADOR J WHERE OLD.EQUIPA=J.EQUIPA)=0)
BEGIN
DELETE FROM EQUIPA WHERE OLD.EQUIPA=EQUIPA.NOME;
END;