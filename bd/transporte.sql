-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03-Jul-2021 às 18:01
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `transporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradors`
--

CREATE TABLE `administradors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` int(10) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `read`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 'asdasdasd', '2021-07-03 12:31:35', '2021-07-03 12:31:35'),
(2, 1, 2, 0, 'asdas', '2021-07-03 12:31:47', '2021-07-03 12:31:47'),
(3, 1, 2, 0, 'mensagem enviada para', '2021-07-03 12:32:05', '2021-07-03 12:32:05'),
(4, 1, 2, 0, 'ola como vai Voce', '2021-07-03 12:32:51', '2021-07-03 12:32:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_02_003433_create_permission_tables', 1),
(5, '2020_11_08_022657_create_terrestre_table', 1),
(6, '2021_03_01_192357_create_administradors_table', 1),
(7, '2021_01_12_201229_create_messages_table', 2),
(8, '2021_01_13_204133_add_read_to_messages', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2021-06-04 00:12:06', '2021-06-04 00:12:06'),
(2, 'role-create', 'web', '2021-06-04 00:12:06', '2021-06-04 00:12:06'),
(3, 'role-edit', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(4, 'role-delete', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(5, 'solicitante-list', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(6, 'solicitante-create', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(7, 'solicitante-edit', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(8, 'solicitante-delete', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(9, 'administrador-list', 'web', '2021-06-04 00:12:07', '2021-06-04 00:12:07'),
(10, 'administrador-create', 'web', '2021-06-04 00:12:08', '2021-06-04 00:12:08'),
(11, 'administrador-edit', 'web', '2021-06-04 00:12:08', '2021-06-04 00:12:08'),
(12, 'administrador-delete', 'web', '2021-06-04 00:12:08', '2021-06-04 00:12:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-06-04 00:12:17', '2021-06-04 00:12:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `terrestre`
--

CREATE TABLE `terrestre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `solicitacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivoSolicitacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crih` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sisreg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CNSUS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idade` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipioOrimgem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidadeHo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipioHo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadoHo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setorLeito` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicoA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foneMedico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataInternacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnostico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quadroClinico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tfd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transferenciaFR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autorizacaoFa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pa1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glasgow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insRenal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diurese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insCardiaca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insCardiaca1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dva` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualDva` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sedacao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iotvm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aCentral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idadeGestante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gesta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dilatacaouterina` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dinamica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pag1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hgtg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bRota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plano` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frg1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesog1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sipi` text COLLATE utf8mb4_unicode_ci,
  `sipi1` text COLLATE utf8mb4_unicode_ci,
  `outros` text COLLATE utf8mb4_unicode_ci,
  `responsavel` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `terrestre`
--

INSERT INTO `terrestre` (`id`, `solicitacao`, `motivoSolicitacao`, `crih`, `sisreg`, `CNSUS`, `nome`, `sexo`, `idade`, `municipioOrimgem`, `estado`, `unidadeHo`, `municipioHo`, `estadoHo`, `setorLeito`, `fone`, `medicoA`, `foneMedico`, `dataInternacao`, `diagnostico`, `quadroClinico`, `npc`, `po`, `tfd`, `transferenciaFR`, `autorizacaoFa`, `pa`, `pa1`, `fc`, `fr`, `temp`, `sat`, `htg`, `glasgow`, `insRenal`, `diurese`, `insCardiaca`, `insCardiaca1`, `dva`, `qualDva`, `sedacao`, `iotvm`, `o2`, `aCentral`, `has`, `dm`, `avc`, `gestante`, `idadeGestante`, `gesta`, `p`, `a`, `dilatacaouterina`, `dinamica`, `pag`, `pag1`, `fcg`, `frg`, `tg`, `hgtg`, `bRota`, `plano`, `bcf`, `frg1`, `tg1`, `pesog1`, `sipi`, `sipi1`, `outros`, `responsavel`, `created_at`, `updated_at`) VALUES
(2, 'sdasdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasda', 'asdasd', 'asdasd', 'asdasdasd', 'asdasda', 'sdasdas', 'asdasd', 'asdasdas', 'dasdasd', 'asdasd', 'asdasdas', '2021-06-15', 'asdsadasdasd', 'asdasdasdasd', 'SIM', 'asdasdasa', 'asdasdasdasd', 'SIM', 'NAO', 'asdasdasd', 'asdasdasdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasda', 'asdasdas', 'asdasdasasd', 'NAO', 'asdasdasdasd', 'NAO', 'asdasdasd', 'NAO', 'asdasda', 'asdasdasdasda', 'NAO', 'asdasdasd', 'NAO', 'SIM', 'NAO', 'NAO', 'SIM', 'asdasdasd', 'asdasdasd', 'asdasdasdas', 'dasdasdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdasdasda', 'dasdasdasd', 'asdasdasd', 'asdasdasdas', 'dasdasdasd', 'asdasdasda', NULL, 'SIM', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasasd', NULL, NULL, 'asdsadasdasdasdasda', 'sdasdasdadasd', '2021-06-04 00:26:25', '2021-06-04 00:26:25'),
(3, 'sdasdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasda', 'asdasd', 'asdasd', 'asdasdasd', 'asdasda', 'sdasdas', 'asdasd', 'asdasdas', 'dasdasd', 'asdasd', 'asdasdas', '2021-06-15', 'asdsadasdasd', 'asdasdasdasd', 'SIM', 'asdasdasa', 'asdasdasdasd', 'SIM', 'NAO', 'asdasdasd', 'asdasdasdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasda', 'asdasdas', 'asdasdasasd', 'NAO', 'asdasdasdasd', 'NAO', 'asdasdasd', 'NAO', 'asdasda', 'asdasdasdasda', 'NAO', 'asdasdasd', 'NAO', 'SIM', 'NAO', 'NAO', 'SIM', 'asdasdasd', 'asdasdasd', 'asdasdasdas', 'dasdasdasd', 'asdasdasdasd', 'asdasdasd', 'asdasdasdasda', 'dasdasdasd', 'asdasdasd', 'asdasdasdas', 'dasdasdasd', 'asdasdasda', NULL, 'SIM', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasasd', 'SIM', NULL, 'asdsadasdasdasdasda', 'sdasdasdadasd', '2021-06-04 00:27:25', '2021-06-04 00:27:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `cpf`, `telefone`, `whatsApp`, `created_at`, `updated_at`) VALUES
(1, 'André', 'andregds85@gmail.com', NULL, '$2y$10$Zxs94yqkxuxm4gwHNWVcgOh1.AfTUVi8J9UnmLJKB3f7JuAT3fWg.', NULL, NULL, NULL, NULL, '2021-06-04 00:12:17', '2021-06-04 00:12:17'),
(2, 'teste', 'teste@teste.com.br', NULL, '$2y$10$Zxs94yqkxuxm4gwHNWVcgOh1.AfTUVi8J9UnmLJKB3f7JuAT3fWg.', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradors`
--
ALTER TABLE `administradors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices para tabela `terrestre`
--
ALTER TABLE `terrestre`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradors`
--
ALTER TABLE `administradors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `terrestre`
--
ALTER TABLE `terrestre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
