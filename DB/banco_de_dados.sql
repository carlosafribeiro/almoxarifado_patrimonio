-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Fev 27, 2012 as 09:48 PM
-- Versão do Servidor: 5.1.49
-- Versão do PHP: 5.3.3-1ubuntu9.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `almoxarifado`
--
CREATE DATABASE `almoxarifado` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `almoxarifado`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacao_funcionario`
--

CREATE TABLE IF NOT EXISTS `aplicacao_funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `senha` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `aplicacao_funcionario`
--

INSERT INTO `aplicacao_funcionario` (`id`, `nome`, `telefone`, `senha`) VALUES
(1, 'Carlos', '99887766', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacao_patrimonio`
--

CREATE TABLE IF NOT EXISTS `aplicacao_patrimonio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `setor_id` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aplicacao_patrimonio_57be7166` (`setor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `aplicacao_patrimonio`
--

INSERT INTO `aplicacao_patrimonio` (`id`, `descricao`, `setor_id`, `data`) VALUES
(1, 'Cadeira_giratória', 1, '2012-02-14'),
(2, 'Computador Lenovo Intel Core I5 500GB 4GB RAM', 1, '2012-02-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacao_produto`
--

CREATE TABLE IF NOT EXISTS `aplicacao_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `qtd_minima` int(11) NOT NULL,
  `data_compra` date NOT NULL,
  `data_validade` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `aplicacao_produto`
--

INSERT INTO `aplicacao_produto` (`id`, `nome`, `quantidade`, `qtd_minima`, `data_compra`, `data_validade`) VALUES
(1, 'Papel A4', 1000, 100, '2012-02-13', '9999-12-31'),
(2, 'Caneta Azul', 500, 50, '2012-02-13', '9999-12-31'),
(3, 'Copo descartável 200ml', 230, 50, '2012-02-14', '9999-12-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacao_saidaproduto`
--

CREATE TABLE IF NOT EXISTS `aplicacao_saidaproduto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `setor_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aplicacao_saidaproduto_18e7e4a8` (`produto_id`),
  KEY `aplicacao_saidaproduto_57be7166` (`setor_id`),
  KEY `aplicacao_saidaproduto_d644fbe` (`funcionario_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `aplicacao_saidaproduto`
--

INSERT INTO `aplicacao_saidaproduto` (`id`, `produto_id`, `quantidade`, `setor_id`, `data`, `funcionario_id`) VALUES
(1, 1, 10, 1, '2012-02-14', 1),
(2, 3, 100, 2, '2012-02-14', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aplicacao_setor`
--

CREATE TABLE IF NOT EXISTS `aplicacao_setor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sala` int(11) NOT NULL,
  `bloco` varchar(10) NOT NULL,
  `ramal` varchar(10) NOT NULL,
  `responsavel` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `aplicacao_setor`
--

INSERT INTO `aplicacao_setor` (`id`, `nome`, `sala`, `bloco`, `ramal`, `responsavel`) VALUES
(1, 'Coordenação de Informática', 4, 'E', '2861', 'Eduardo'),
(2, 'Manutenção', 123, 'A', '2800', 'Maria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auth_group`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auth_message`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add produto', 9, 'add_produto'),
(26, 'Can change produto', 9, 'change_produto'),
(27, 'Can delete produto', 9, 'delete_produto'),
(28, 'Can add setor', 10, 'add_setor'),
(29, 'Can change setor', 10, 'change_setor'),
(30, 'Can delete setor', 10, 'delete_setor'),
(31, 'Can add funcionario', 11, 'add_funcionario'),
(32, 'Can change funcionario', 11, 'change_funcionario'),
(33, 'Can delete funcionario', 11, 'delete_funcionario'),
(34, 'Can add saida produto', 12, 'add_saidaproduto'),
(35, 'Can change saida produto', 12, 'change_saidaproduto'),
(36, 'Can delete saida produto', 12, 'delete_saidaproduto'),
(37, 'Can add patrimonio', 13, 'add_patrimonio'),
(38, 'Can change patrimonio', 13, 'change_patrimonio'),
(39, 'Can delete patrimonio', 13, 'delete_patrimonio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', '', '', 'carlos@carlos.com.br', 'sha1$df91d$d1fef77404fe1c2d23b282a6b83034cb517f4299', 1, 1, 1, '2012-02-13 21:52:54', '2012-02-13 21:51:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-02-13 22:37:34', 1, 9, '1', 'Produto object', 1, ''),
(2, '2012-02-13 22:38:22', 1, 9, '2', 'Produto object', 1, ''),
(3, '2012-02-13 22:39:57', 1, 10, '1', 'Setor object', 1, ''),
(4, '2012-02-13 22:40:33', 1, 11, '1', 'Funcionario object', 1, ''),
(5, '2012-02-14 20:41:23', 1, 12, '1', 'SaidaProduto object', 1, ''),
(6, '2012-02-14 20:42:38', 1, 9, '3', 'Copo descartável 200ml', 1, ''),
(7, '2012-02-14 21:13:55', 1, 10, '2', 'Manutenção', 1, ''),
(8, '2012-02-14 21:14:05', 1, 12, '2', 'SaidaProduto object', 1, ''),
(9, '2012-02-14 21:50:27', 1, 13, '1', 'Patrimonio object', 1, ''),
(10, '2012-02-14 21:52:41', 1, 13, '2', 'Patrimonio object', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'log entry', 'admin', 'logentry'),
(9, 'produto', 'aplicacao', 'produto'),
(10, 'setor', 'aplicacao', 'setor'),
(11, 'funcionario', 'aplicacao', 'funcionario'),
(12, 'saida produto', 'aplicacao', 'saidaproduto'),
(13, 'patrimonio', 'aplicacao', 'patrimonio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ff9a473b2946525b4d1343dccd0db054', 'gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS42Yzk3MTBjNzI2MmYzYWYwMzg4\nOWIzNWJkZmJiYjJjMQ==\n', '2012-02-27 21:52:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `cod_funcionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `tipo_acesso` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `senha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_funcionario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cod_funcionario`, `nome`, `tipo_acesso`, `telefone`, `senha`) VALUES
(1, 'carlos', 'ADMINISTRADOR', '27225566', '1234'),
(2, 'teste', 'FUNCIONARIO', '25889658', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedido`
--

CREATE TABLE IF NOT EXISTS `itens_pedido` (
  `cod_pedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  KEY `pedido` (`cod_pedido`),
  KEY `produto` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `itens_pedido`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_saida`
--

CREATE TABLE IF NOT EXISTS `itens_saida` (
  `cod_saida` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  KEY `saida` (`cod_saida`),
  KEY `produtos` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `itens_saida`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `cod_pedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` int(10) unsigned NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`cod_pedido`) USING BTREE,
  KEY `cod_produto` (`cod_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `pedido`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `cod_produto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `minimo` int(5) NOT NULL,
  `data_compra` date NOT NULL,
  `validade` date NOT NULL,
  PRIMARY KEY (`cod_produto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `nome`, `quantidade`, `minimo`, `data_compra`, `validade`) VALUES
(1, 'PAPEL A4', 1700, 0, '2011-12-20', '9999-12-31'),
(2, 'BORRACHA', 3990, 50, '2012-01-02', '9999-12-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida_produto`
--

CREATE TABLE IF NOT EXISTS `saida_produto` (
  `cod_saida` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_produto` int(10) unsigned NOT NULL,
  `quantidade` int(11) NOT NULL,
  `cod_setor` int(10) unsigned NOT NULL,
  `data` date NOT NULL,
  `cod_funcionario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cod_saida`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `saida_produto`
--

INSERT INTO `saida_produto` (`cod_saida`, `cod_produto`, `quantidade`, `cod_setor`, `data`, `cod_funcionario`) VALUES
(1, 0, 12, 0, '2011-12-15', 0),
(2, 0, 0, 0, '0000-00-00', 0),
(3, 0, 12, 0, '2011-12-16', 0),
(4, 0, 32, 0, '2011-12-16', 0),
(5, 0, 100, 0, '2011-12-16', 0),
(6, 0, 1000, 0, '2011-12-16', 0),
(7, 1, 44, 1, '2011-12-16', 1),
(8, 1, 100, 2, '2011-12-17', 2),
(9, 1, 200, 2, '2011-12-17', 1),
(10, 1, 5000, 1, '2011-12-20', 1),
(11, 1, 10000, 1, '2011-12-17', 2),
(12, 1, 100, 1, '2011-12-22', 1),
(13, 1, 100, 1, '2012-01-02', 1),
(14, 1, 100, 2, '2012-01-02', 2),
(15, 2, 10, 2, '2012-01-02', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE IF NOT EXISTS `setor` (
  `cod_setor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sala` varchar(45) NOT NULL,
  `bloco` varchar(5) NOT NULL,
  `ramal` varchar(45) NOT NULL,
  `responsavel` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_setor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`cod_setor`, `nome`, `sala`, `bloco`, `ramal`, `responsavel`) VALUES
(1, 'DTIC', '113', 'B', '2834', 'THIAGO'),
(2, 'COORDENAÃ‡ÃƒO DE INFORMÃTICA', '004', 'E', '2865', 'EDUARDO');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD CONSTRAINT `pedido` FOREIGN KEY (`cod_pedido`) REFERENCES `pedido` (`cod_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `produto` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `itens_saida`
--
ALTER TABLE `itens_saida`
  ADD CONSTRAINT `produtos` FOREIGN KEY (`cod_produto`) REFERENCES `produto` (`cod_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `saida` FOREIGN KEY (`cod_saida`) REFERENCES `saida_produto` (`cod_saida`) ON DELETE NO ACTION ON UPDATE NO ACTION;
