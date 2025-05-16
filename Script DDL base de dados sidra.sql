CREATE DATABASE sidra;
use sidra;
CREATE TABLE pmc_8880 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(15,2),
    indice VARCHAR(255),
    uf VARCHAR(20),
    mesano_codigo VARCHAR(10),
    mesano VARCHAR(100)
);
ALTER TABLE pmc_8880
ADD UNIQUE KEY unique_registro (indice, uf, mesano_codigo);
CREATE TABLE pmc_8881 LIKE pmc_8880;

CREATE TABLE pmc_8882 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(15,2),
    indice VARCHAR(255),
    atividades VARCHAR(255),
    uf VARCHAR(20),
    mesano_codigo VARCHAR(10),
    mesano VARCHAR(100)
);
ALTER TABLE pmc_8882
ADD UNIQUE KEY unique_registro (indice, atividades, uf, mesano_codigo);
CREATE TABLE pmc_8883 LIKE pmc_8882;

select * from pmc_8883
