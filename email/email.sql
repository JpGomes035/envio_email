-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/12/2024 às 23:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `email`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--

CREATE TABLE `agenda` (
  `idAgenda` int(5) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(1500) NOT NULL,
  `nivelAprov` varchar(15) NOT NULL,
  `telAgenda` varchar(25) NOT NULL,
  `resp` varchar(150) DEFAULT NULL,
  `concluido` varchar(1) DEFAULT NULL,
  `datareg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agenda`
--

INSERT INTO `agenda` (`idAgenda`, `titulo`, `data`, `descricao`, `nivelAprov`, `telAgenda`, `resp`, `concluido`, `datareg`) VALUES
(149, 'teste', '2024-11-06', 'alo', 'Ativo', '+55 (35) 8468-7649', 'João', 'S', '2024-11-07 05:48:20'),
(150, 'teste', '2024-11-06', 'alo', 'Ativo', '+55 (35) 8468-7649', 'João', 's', '2024-11-07 05:48:20'),
(151, 'João Pedro', '2025-02-01', 'teste', 'Ativo', '+55 (35) 8468-7649', 'João', 'n', '2024-11-07 05:48:20'),
(152, 'teste', '2024-11-07', 'teste', 'Ativo', '11', 'Admin', 'S', '2024-11-07 05:57:43');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emails_enviados`
--

CREATE TABLE `emails_enviados` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `destinatario` varchar(255) NOT NULL,
  `mensagem` text NOT NULL,
  `anexo_nome` varchar(255) DEFAULT NULL,
  `anexo_tipo` varchar(255) DEFAULT NULL,
  `anexo_conteudo` longblob DEFAULT NULL,
  `data_envio` datetime NOT NULL,
  `anexo_caminho` varchar(255) DEFAULT NULL,
  `visualizar` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `emails_enviados`
--

INSERT INTO `emails_enviados` (`id`, `nome`, `email`, `destinatario`, `mensagem`, `anexo_nome`, `anexo_tipo`, `anexo_conteudo`, `data_envio`, `anexo_caminho`, `visualizar`) VALUES
(17, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'test', 'e8cf79ea617df106_pedido_compra.pdf', 'application/pdf', NULL, '2024-12-11 14:07:27', 'anexo_email/e8cf79ea617df106_pedido_compra.pdf', 's'),
(18, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'opa', '0de1d2244b0727f2_IMG_7980.jpeg', 'image/jpeg', NULL, '2024-07-22 14:14:05', 'anexo_email/0de1d2244b0727f2_IMG_7980.jpeg', 'n'),
(19, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'teste', '1e64d3e878e73cc5_jess i eu.mp4', 'video/mp4', NULL, '2024-07-24 11:58:05', 'anexo_email/1e64d3e878e73cc5_jess i eu.mp4', 'n'),
(20, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'teste', '31722f97609f8766_default.jpg', 'image/jpeg', NULL, '2024-07-29 15:34:54', 'anexo_email/31722f97609f8766_default.jpg', 'n'),
(21, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'teste2', 'fc61a3e2b8e4ff8b_669fad8d56dec.jpg', 'image/jpeg', NULL, '2024-07-29 15:35:57', 'anexo_email/fc61a3e2b8e4ff8b_669fad8d56dec.jpg', 'n'),
(22, 'João Pedro', 'procontrol.contat@gmail.com', 'contat.joao10@gmail.com', 'nao sei o que é', 'c110a43be5ee7165_14-13_BR1-2960795262_02.mp4', 'video/mp4', NULL, '2024-08-09 17:12:11', 'anexo_email/c110a43be5ee7165_14-13_BR1-2960795262_02.mp4', 'n');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagens`
--

CREATE TABLE `imagens` (
  `id_imagem` int(5) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imagens`
--

INSERT INTO `imagens` (`id_imagem`, `nome`) VALUES
(26, 'IMG_3487.jpg'),
(27, 'fof.jpeg'),
(28, '8f2d4c23-75f7-4bbc-802c-65f2f08c2b7.jpeg'),
(29, 'e2bb3d37-37c6-4b66-8068-bb3547d08aea.jpeg'),
(30, 'procontrol.png'),
(31, 'ping.jpeg'),
(32, 'procontrol.png'),
(33, '8f2d4c23-75f7-4bbc-802c-65f2f08c2b78.jpeg'),
(34, 'ping.jpeg'),
(35, 'procontrol.png'),
(36, 'limpeza.png'),
(37, 'e2bb3d37-37c6-4b66-8068-bb3547d08aea.jpeg'),
(38, 'fof.jpeg'),
(39, 'gojo.jpg'),
(40, 'Chainsaw man (Denji) Ft_ The Weeknd [Starboy].jpg'),
(41, 'anime-girl-chilling-at-balcony-4k-de-1910x1075.jpg'),
(42, 'baixados.jpg'),
(43, 'gojo.jpg'),
(44, 'frieren-beyond-journey-s-end-oc-1910x1075.jpg'),
(45, 'anime-girl-chilling-at-balcony-4k-de-1910x1075.jpg'),
(46, 'anime-girl-chilling-at-balcony-4k-de-1910x1075.jpg'),
(47, 'baixados (2).jpg'),
(48, 'monitor.png'),
(49, 'frieren-beyond-journey-s-end-oc-1910x1075.jpg'),
(50, 'Preview.png'),
(51, 'Procontrol.png'),
(52, 'baixados (1).jpg'),
(53, 'Preview.png'),
(54, 'Procontrol.png'),
(55, 'hayseyn.jpeg'),
(56, 'Procontrol.png'),
(57, 'Uluzang gril, (1).jpeg'),
(58, 'IMG_5288.jpeg'),
(59, '91EFADD8-F9D7-4788-982C-03356DE35A04.jpeg'),
(60, 'Uluzang gril, (1).jpeg'),
(61, '91EFADD8-F9D7-4788-982C-03356DE35A04.jpeg'),
(62, 'Uluzang gril, (1).jpeg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id_info` int(5) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `cep` varchar(150) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `informacoes`
--

INSERT INTO `informacoes` (`id_info`, `nome`, `cnpj`, `email`, `telefone`, `rua`, `cep`, `cidade`, `bairro`) VALUES
(13, 'ProControl', '28.230.375/0001-67	', 'procontrol.contat@gmail.com', '35 84687649', 'Rua Augusto de souza cardoso, 330', '37504-500', 'Itajubá - MG', 'Jardim das Palmeiras');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `idMensagem` int(5) NOT NULL,
  `mensagem` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mensagem`
--

INSERT INTO `mensagem` (`idMensagem`, `mensagem`) VALUES
(1, 'kjkkkkkkkkkkk'),
(2, 'mkkkkkkkkkkkkkkkkkkk'),
(3, 'teste'),
(4, 'oi'),
(5, 'Teste'),
(6, 'Teste'),
(7, 'João'),
(8, 'teste'),
(9, 'teste'),
(10, 'kkkkk'),
(11, 'teste do caralho nessa porra'),
(12, 'mensagem'),
(13, 'teste'),
(14, 'teste safada'),
(15, 'tes'),
(16, 'tesa'),
(17, 'tesstee'),
(18, 'tes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(5) NOT NULL,
  `NomeSetor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `setor`
--

INSERT INTO `setor` (`idSetor`, `NomeSetor`) VALUES
(2, 'Desenvolvimento'),
(3, 'Financeiro'),
(4, 'Administração'),
(6, 'Vendas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nome` varchar(80) NOT NULL,
  `Sobrenome` varchar(90) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Senha` varchar(256) NOT NULL,
  `NivelUsuario` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `telefoneUsuario` varchar(20) NOT NULL,
  `cpfUsuario` varchar(15) NOT NULL,
  `Setor` varchar(70) DEFAULT NULL,
  `Online` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nome`, `Sobrenome`, `Email`, `Senha`, `NivelUsuario`, `Status`, `telefoneUsuario`, `cpfUsuario`, `Setor`, `Online`) VALUES
(2, 'João', 'Pedro', 'joao@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 'Ativo', '+55 (35) 8468-7649', '139.527.326-06', 'Administração', 1),
(49, 'Admin', 'Pedro', 'admin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 'Ativo', '+55 (55) 3584-0000', '139.527.326-03', 'Administração', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`idAgenda`);

--
-- Índices de tabela `emails_enviados`
--
ALTER TABLE `emails_enviados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Índices de tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id_info`);

--
-- Índices de tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`idMensagem`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `idAgenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de tabela `emails_enviados`
--
ALTER TABLE `emails_enviados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id_imagem` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id_info` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `idMensagem` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
