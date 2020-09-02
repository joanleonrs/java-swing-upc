/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  joanleonrs
 * Created: 31 ago. 2020
 */

create database gestionComputo;

use gestionComputo;

CREATE TABLE `equipo` (
`codigo` int(11) NOT NULL,
`modelo` varchar(80) NOT NULL,
`marca` varchar(100) NOT NULL,
`categoria` varchar(50) NOT NULL,
`disponible` boolean DEFAULT false
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

use gestionComputo;

SELECT * from equipo;
SELECT `equipo`.`codigo`,
    `equipo`.`modelo`,
    `equipo`.`marca`,
    `equipo`.`categoria`,
    `equipo`.`disponible`
FROM `gestioncomputo`.`equipo`;

INSERT INTO `gestioncomputo`.`equipo`
(`codigo`,
`modelo`,
`marca`,
`categoria`,
`disponible`)
VALUES
("101",
"Satellite-100",
"Toshiba",
"Laptop",
true);

UPDATE `gestioncomputo`.`equipo`
SET
`modelo` = "Latitude-200",
`marca` = "Dell",
`categoria` = "Ultrabook",
`disponible` = false
WHERE 
`codigo` = "101";

DELETE FROM `gestioncomputo`.`equipo`
WHERE `codigo` = "101";


