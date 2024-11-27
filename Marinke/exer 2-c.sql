DELIMITER //

CREATE PROCEDURE RedefinirStatusMesaLivre(IN mesa_id INT)
BEGIN
    UPDATE Mesa
    SET status = 'Livre'
    WHERE id_mesa = mesa_id;
END //

DELIMITER ;
