DELIMITER $$

CREATE TRIGGER trg_order_status_audit
BEFORE UPDATE ON Orders
FOR EACH ROW
BEGIN
    IF OLD.OrderStatus <> NEW.OrderStatus THEN
        INSERT INTO OrderAudit (OrderID, OldStatus, NewStatus)
        VALUES (OLD.OrderID, OLD.OrderStatus, NEW.OrderStatus);
    END IF;
END$$

DELIMITER ;