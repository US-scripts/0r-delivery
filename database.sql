CREATE TABLE
    IF NOT EXISTS `0resmon_delivery_employees` (
        id INT (11) NOT NULL AUTO_INCREMENT,
        user VARCHAR(64) NOT NULL,
        profile VARCHAR(32),
        level INT (11),
        exp INT (11),
        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
        KEY id (id)
    ) ENGINE = InnoDB AUTO_INCREMENT = 1;