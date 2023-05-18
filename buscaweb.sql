-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27-Abr-2023 às 11:33
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `buscaweb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) NOT NULL,
  `usuario` varchar(500) NOT NULL,
  `senha` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`id`, `mail`, `usuario`, `senha`) VALUES
(1, 'kauan@gmail.com', '$2y$10$8WYBKls3uDIE.a8mpqSLsuT75RdBtElbOPxFs5TlqOoZY0cgCCnw6', '$2y$10$acpuRsNhfVHzhNYZ7ZYMAetWwQYy.QrczcsOiGKdep7WChOofo2oC'),
(2, 'glivia@gmail.com', '$2y$10$To2j3jrEvSJ.tpfWEhglp.WK1x3.I/cLeIqxXzhcGnPArIWWR9O.C', '$2y$10$y.NGJhbYi6zMBdv2YJTWteJGpU6QqMeopkooA7TjujJNc5Sjm5nfi'),
(3, 'dani@gmail.com', '$2y$10$96YhZphTc2ZtI1yO.z8LdOMul2Qk.kbjl238ZMFKQYEu7TJTDctoi', '$2y$10$ck65M/i56XreVxzgDBkMGelZFS8QPXOl/.dySYeyYVm0I8VIkQOwG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` mediumtext NOT NULL,
  `preco` int NOT NULL,
  `quantidade` int NOT NULL,
  `promocao` tinyint(1) NOT NULL,
  `tipo` varchar(1000) NOT NULL,
  `data` datetime NOT NULL,
  `imagens` mediumtext NOT NULL,
  `id_Emp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `tel_2` varchar(20) DEFAULT NULL,
  `descricao` varchar(10000) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `bairro`, `rua`, `numero`, `complemento`, `cnpj`, `tel`, `tel_2`, `descricao`, `logo`) VALUES
(1, 'henrique', 'rua', 'bairro', 123, 'na rua ', '123123123123', '1231', '21312312', 'o gerente', '../images/1/logo/logo.png'),
(2, 'glivia', 'asd', 'askda', 123, '1313', '13123', '13123', '13123', NULL, '../images/2/logo/logo.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
