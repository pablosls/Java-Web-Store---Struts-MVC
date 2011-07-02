-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.11


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_comercio
--

CREATE DATABASE IF NOT EXISTS db_comercio;
USE db_comercio;

--
-- Definition of table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE `carrinho` (
  `cod_user` int(11) NOT NULL,
  `cod_prod` int(11) NOT NULL,
  PRIMARY KEY (`cod_user`,`cod_prod`),
  KEY `fk_carrinho-cod_user` (`cod_user`),
  KEY `fk_carrinho-cod_prod` (`cod_prod`),
  CONSTRAINT `fk_carrinho-cod_prod` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_carrinho-cod_user` FOREIGN KEY (`cod_user`) REFERENCES `usuario` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrinho`
--

/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
INSERT INTO `carrinho` (`cod_user`,`cod_prod`) VALUES 
 (32,1),
 (35,4);
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;


--
-- Definition of table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `cod_cat` int(11) NOT NULL,
  `nome_cat` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`cod_cat`,`nome_cat`) VALUES 
 (1,'eletronicos'),
 (2,'informatica'),
 (3,'celulares'),
 (6,'Livros'),
 (7,'Localizadores'),
 (8,'Televisores');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


--
-- Definition of table `contato`
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE `contato` (
  `nome` varchar(45) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `cod_contato` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_contato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contato`
--

/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;


--
-- Definition of table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double NOT NULL,
  `data` date NOT NULL,
  `status` int(11) NOT NULL,
  `cod_user` int(11) NOT NULL,
  PRIMARY KEY (`num_pedido`),
  KEY `fk_pedido-cod_user` (`cod_user`),
  CONSTRAINT `fk_pedido-cod_user` FOREIGN KEY (`cod_user`) REFERENCES `usuario` (`cod_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido`
--

/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` (`num_pedido`,`valor`,`data`,`status`,`cod_user`) VALUES 
 (3,20.95,'2011-06-18',1,30),
 (4,10.5,'2011-06-18',1,30),
 (5,20.5,'2011-06-18',1,30),
 (6,10.5,'2011-06-18',1,30),
 (7,20.5,'2011-06-19',1,30),
 (8,20.5,'2011-06-19',1,30),
 (9,430.94,'2011-06-19',1,30),
 (10,10.5,'2011-06-19',1,30),
 (11,10.5,'2011-06-19',1,30),
 (12,20.95,'2011-06-19',1,30),
 (13,430.94,'2011-06-19',1,30),
 (14,430.94,'2011-06-19',1,30),
 (15,430.94,'2011-06-19',1,30),
 (16,10,'2011-06-19',1,30),
 (17,430.94,'2011-06-19',1,30),
 (18,10.45,'2011-06-19',1,30),
 (19,430.94,'2011-06-19',1,30),
 (20,10,'2011-06-19',1,30),
 (21,10,'2011-06-19',1,30),
 (22,30.95,'2011-06-19',1,29),
 (23,10,'2011-06-19',1,29),
 (24,10.5,'2011-06-19',1,35),
 (25,1899.29,'2011-06-19',1,30),
 (26,519.94,'2011-06-19',1,30),
 (27,10.45,'2011-06-19',1,30),
 (28,410.49,'2011-06-19',1,30),
 (29,519.94,'2011-06-19',1,30),
 (30,299.3,'2011-06-19',1,30),
 (31,2009.98,'2011-06-19',1,30),
 (32,1620.49,'2011-06-19',1,30),
 (33,10,'2011-06-19',1,30);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;


--
-- Definition of table `pedido_produto`
--

DROP TABLE IF EXISTS `pedido_produto`;
CREATE TABLE `pedido_produto` (
  `cod_pedido` int(11) NOT NULL,
  `cod_prod` int(11) NOT NULL,
  `qtd` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_pedido`,`cod_prod`),
  KEY `fk_pedprod-cod_pedido` (`cod_pedido`),
  KEY `fk_pedprod-cod_prod` (`cod_prod`),
  CONSTRAINT `fk_pedprod-cod_pedido` FOREIGN KEY (`cod_pedido`) REFERENCES `pedido` (`num_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedprod-cod_prod` FOREIGN KEY (`cod_prod`) REFERENCES `produto` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido_produto`
--

/*!40000 ALTER TABLE `pedido_produto` DISABLE KEYS */;
INSERT INTO `pedido_produto` (`cod_pedido`,`cod_prod`,`qtd`) VALUES 
 (3,2,1),
 (3,3,1),
 (4,2,1),
 (5,1,1),
 (5,2,1),
 (6,2,1),
 (7,1,1),
 (7,2,1),
 (8,1,1),
 (8,2,1),
 (9,1,1),
 (9,2,1),
 (9,3,1),
 (9,4,1),
 (10,2,1),
 (11,2,1),
 (12,2,1),
 (12,3,1),
 (13,1,1),
 (13,2,1),
 (13,3,1),
 (13,4,1),
 (14,1,1),
 (14,2,1),
 (14,3,1),
 (14,4,1),
 (15,1,1),
 (15,2,1),
 (15,3,1),
 (15,4,1),
 (16,1,1),
 (17,1,1),
 (17,2,1),
 (17,3,1),
 (17,4,1),
 (18,3,1),
 (19,1,1),
 (19,2,1),
 (19,3,1),
 (19,4,1),
 (20,1,1),
 (21,1,1),
 (22,1,1),
 (22,2,1),
 (22,3,1),
 (23,1,1),
 (24,2,1),
 (25,8,1),
 (25,13,1),
 (26,1,1),
 (26,3,1),
 (26,7,1),
 (27,3,1),
 (28,2,1),
 (28,4,1),
 (29,1,1),
 (29,3,1),
 (29,7,1),
 (30,8,1),
 (31,1,1),
 (31,4,1),
 (31,13,1),
 (32,1,1),
 (32,2,1),
 (32,13,1),
 (33,1,1);
/*!40000 ALTER TABLE `pedido_produto` ENABLE KEYS */;


--
-- Definition of table `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_prod` varchar(45) NOT NULL,
  `preco` double NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `cod_cat` int(11) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  PRIMARY KEY (`cod_produto`),
  KEY `fk_prod-cod_cat` (`cod_cat`),
  CONSTRAINT `fk_prod-cod_cat` FOREIGN KEY (`cod_cat`) REFERENCES `categoria` (`cod_cat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto`
--

/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`cod_produto`,`nome_prod`,`preco`,`descricao`,`cod_cat`,`url_img`) VALUES 
 (1,'GPS DIGITAL',10,'GPS DIGITAL 10 x 4 8',7,'images/produtos/localizadores/gps1.jpg'),
 (2,'CELULAR NOKIA',10.5,'CELulaR',3,'images/produtos/celulares/celularnokia1.jpg'),
 (3,'DESKTOP DELL',10.45,'Dual core 4 mb',2,'images/produtos/informatica/pc_dell.jpg'),
 (4,'NOKIA i8789',399.99,'NOKIA i8789',3,'images/produtos/celulares/nokia2.jpg'),
 (7,'NOKIA 888',499.49,'NOKIA',3,'http://2.bp.blogspot.com/__hx9WAS0BEk/SLqexS2EmeI/AAAAAAAAALI/qjt5VUooxpI/s320/5200.jpg'),
 (8,'nokia6666',299.3,'nokia',3,'http://images04.olx.com.br/ui/1/16/45/41701145_1.jpg'),
 (13,'TV PLASMA 50',1599.99,'TV DE PLASma',8,'http://static.quebarato.co.ao/26924/images/last_search/tv_lg_plasma.jpg'),
 (15,'Calc. HP',159.7,'Calculadora HP',1,'http://www.wiki2buy.com.br/images/1/12/Calculadora1.jpg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `cod_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(15) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sexo` char(1) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `tipo_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_user`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`cod_user`,`login`,`senha`,`nome`,`email`,`sexo`,`endereco`,`cidade`,`estado`,`tel`,`tipo_user`,`status`) VALUES 
 (13,'pablo','123456','pablo','wadwad','F','wadwad','wadwad','RS','wadwad',1,1),
 (16,'dawdw','awd','dwada','wadwad','F','wadwad','dawd','RJ','wadad',1,1),
 (18,'fesfes','efesf','dsefse','sefesf','F','sefsf','sefsefsef','RJ','sfsefsef',1,1),
 (20,'fhtfh','hfhf','hfth','tfhtfh','F','fthfth','fthfth','RS','tfht',1,1),
 (22,'jose','dwadw','jose','dwadwad','F','wda','dwdwad','RJ','wadwad',1,1),
 (23,'sefesf','sefsef','fesf','sefsef','F','sefsef','sefsef','RJ','sefsef',1,1),
 (25,'cris','cris','cris','cris','F','cris','cris','SP','2121212',1,1),
 (26,'as','as','as','as','F','dwadwad','as','SP','33232',1,1),
 (27,'rdgd','gdr','gdrg','gdrdrgg','F','gdrgdrg','drgdrgdrg','SP','3232',1,1),
 (28,'ets','te','test','fsef','F','fsefsef','sefesf','SP','545454',1,1),
 (29,'ana','123456','Ana Paula Padrao','Ana Paula Padrao','F','wadwad','dawdwadwad','SP','21212',1,1),
 (30,'teste','123456','pablosls','pablo@21321.com','F','Rua Pablo S','pablo','SP','11111111111',1,1),
 (32,'ana2','123456','ana','ana','F','rua 123','432423','SP','5454545',1,1),
 (35,'admin','123456','administrador','admin@admin','M','Rua dos admins','Sao Paulo','SP','3214234',2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
