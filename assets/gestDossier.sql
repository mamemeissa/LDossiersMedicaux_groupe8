-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 31 déc. 2022 à 13:22
-- Version du serveur : 8.0.31-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hmisphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `his_accounts`
--

CREATE TABLE `his_accounts` (
  `acc_id` int NOT NULL,
  `acc_name` varchar(200) DEFAULT NULL,
  `acc_desc` text,
  `acc_type` varchar(200) DEFAULT NULL,
  `acc_number` varchar(200) DEFAULT NULL,
  `acc_amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_admin`
--

CREATE TABLE `his_admin` (
  `ad_id` int NOT NULL,
  `ad_fname` varchar(200) DEFAULT NULL,
  `ad_lname` varchar(200) DEFAULT NULL,
  `ad_email` varchar(200) DEFAULT NULL,
  `ad_pwd` varchar(200) DEFAULT NULL,
  `ad_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_admin`
--

INSERT INTO `his_admin` (`ad_id`, `ad_fname`, `ad_lname`, `ad_email`, `ad_pwd`, `ad_dpic`) VALUES
(4, 'Papa Cheikh', 'Gningue', 'papacheikhgningue@esp.sn', '69d4d882bb9ba2c84e2600703e4a5815bf9558ca8fc35affac85547703a29660522f2b073622f6f762c5fdf8fe526f75db09a0c4f1907d0614db6efc0c7cd78a', NULL),
(5, 'Papa Cheikh', 'Gningue', 'admin@mail.com', 'a5e5402362043a1c2bab171c380adda197aa07c6bb7483a6c0effe08330641eae8da26a477c886a6f4bb063e793ade583932a64e5ce5d0bce4bb850a7db85d5f', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `his_assets`
--

CREATE TABLE `his_assets` (
  `asst_id` int NOT NULL,
  `asst_name` varchar(200) DEFAULT NULL,
  `asst_desc` longtext,
  `asst_vendor` varchar(200) DEFAULT NULL,
  `asst_status` varchar(200) DEFAULT NULL,
  `asst_dept` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_docs`
--

CREATE TABLE `his_docs` (
  `doc_id` int NOT NULL,
  `doc_fname` varchar(200) DEFAULT NULL,
  `doc_lname` varchar(200) DEFAULT NULL,
  `doc_email` varchar(200) DEFAULT NULL,
  `doc_pwd` varchar(200) DEFAULT NULL,
  `doc_dept` varchar(200) DEFAULT NULL,
  `doc_number` varchar(200) DEFAULT NULL,
  `doc_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_docs`
--

INSERT INTO `his_docs` (`doc_id`, `doc_fname`, `doc_lname`, `doc_email`, `doc_pwd`, `doc_dept`, `doc_number`, `doc_dpic`) VALUES
(14, 'Boubacar', 'TRAORE', 'gningue.cheikh98@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', NULL, 'PJC36', ''),
(15, 'Mame Awa', 'GUEYE', 'gningue.cheikh98@gmail.com', 'a55c50823193a2abf78cf79ff1090cf3ea88cc402ee5857fbd7423289e170e977ae7033ed123d7fedec49985b84368f6990bdc960a1f10e6d0214c9d26ceac26', NULL, 'W4Y8Q', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `his_equipments`
--

CREATE TABLE `his_equipments` (
  `eqp_id` int NOT NULL,
  `eqp_code` varchar(200) DEFAULT NULL,
  `eqp_name` varchar(200) DEFAULT NULL,
  `eqp_vendor` varchar(200) DEFAULT NULL,
  `eqp_desc` longtext,
  `eqp_dept` varchar(200) DEFAULT NULL,
  `eqp_status` varchar(200) DEFAULT NULL,
  `eqp_qty` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_laboratory`
--

CREATE TABLE `his_laboratory` (
  `lab_id` int NOT NULL,
  `lab_pat_name` varchar(200) DEFAULT NULL,
  `lab_pat_ailment` varchar(200) DEFAULT NULL,
  `lab_pat_number` varchar(200) DEFAULT NULL,
  `lab_pat_tests` longtext,
  `lab_pat_results` longtext,
  `lab_number` varchar(200) DEFAULT NULL,
  `lab_date_rec` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_medical_records`
--

CREATE TABLE `his_medical_records` (
  `mdr_id` int NOT NULL,
  `mdr_number` varchar(200) DEFAULT NULL,
  `mdr_pat_name` varchar(200) DEFAULT NULL,
  `mdr_pat_adr` varchar(200) DEFAULT NULL,
  `mdr_pat_age` varchar(200) DEFAULT NULL,
  `mdr_pat_ailment` varchar(200) DEFAULT NULL,
  `mdr_pat_number` varchar(200) DEFAULT NULL,
  `mdr_pat_prescr` longtext,
  `mdr_date_rec` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_patients`
--

CREATE TABLE `his_patients` (
  `pat_id` int NOT NULL,
  `pat_fname` varchar(200) DEFAULT NULL,
  `pat_lname` varchar(200) DEFAULT NULL,
  `pat_dob` varchar(200) DEFAULT NULL,
  `pat_age` varchar(200) DEFAULT NULL,
  `pat_number` varchar(200) DEFAULT NULL,
  `pat_addr` varchar(200) DEFAULT NULL,
  `pat_phone` varchar(200) DEFAULT NULL,
  `pat_type` varchar(200) DEFAULT NULL,
  `pat_date_joined` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `pat_ailment` varchar(200) DEFAULT NULL,
  `pat_discharge_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_patients`
--

INSERT INTO `his_patients` (`pat_id`, `pat_fname`, `pat_lname`, `pat_dob`, `pat_age`, `pat_number`, `pat_addr`, `pat_phone`, `pat_type`, `pat_date_joined`, `pat_ailment`, `pat_discharge_status`) VALUES
(18, 'Papa Cheikh', 'GNINGUE', '07/01/1998', '12', 'QMZ2G', '72B', '2626262', 'OutPatient', '2022-12-28 22:57:08.637196', 'Asthme', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `his_patient_transfers`
--

CREATE TABLE `his_patient_transfers` (
  `t_id` int NOT NULL,
  `t_hospital` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  `t_pat_name` varchar(200) DEFAULT NULL,
  `t_pat_number` varchar(200) DEFAULT NULL,
  `t_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_payrolls`
--

CREATE TABLE `his_payrolls` (
  `pay_id` int NOT NULL,
  `pay_number` varchar(200) DEFAULT NULL,
  `pay_doc_name` varchar(200) DEFAULT NULL,
  `pay_doc_number` varchar(200) DEFAULT NULL,
  `pay_doc_email` varchar(200) DEFAULT NULL,
  `pay_emp_salary` varchar(200) DEFAULT NULL,
  `pay_date_generated` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  `pay_status` varchar(200) DEFAULT NULL,
  `pay_descr` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_pharmaceuticals`
--

CREATE TABLE `his_pharmaceuticals` (
  `phar_id` int NOT NULL,
  `phar_name` varchar(200) DEFAULT NULL,
  `phar_bcode` varchar(200) DEFAULT NULL,
  `phar_desc` longtext,
  `phar_qty` varchar(200) DEFAULT NULL,
  `phar_cat` varchar(200) DEFAULT NULL,
  `phar_vendor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_pharmaceuticals_categories`
--

CREATE TABLE `his_pharmaceuticals_categories` (
  `pharm_cat_id` int NOT NULL,
  `pharm_cat_name` varchar(200) DEFAULT NULL,
  `pharm_cat_vendor` varchar(200) DEFAULT NULL,
  `pharm_cat_desc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_prescriptions`
--

CREATE TABLE `his_prescriptions` (
  `pres_id` int NOT NULL,
  `pres_pat_name` varchar(200) DEFAULT NULL,
  `pres_pat_age` varchar(200) DEFAULT NULL,
  `pres_pat_number` varchar(200) DEFAULT NULL,
  `pres_number` varchar(200) DEFAULT NULL,
  `pres_pat_addr` varchar(200) DEFAULT NULL,
  `pres_pat_type` varchar(200) DEFAULT NULL,
  `pres_date` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  `pres_pat_ailment` varchar(200) DEFAULT NULL,
  `pres_ins` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_prescriptions`
--

INSERT INTO `his_prescriptions` (`pres_id`, `pres_pat_name`, `pres_pat_age`, `pres_pat_number`, `pres_number`, `pres_pat_addr`, `pres_pat_type`, `pres_date`, `pres_pat_ailment`, `pres_ins`) VALUES
(8, 'Papa Cheikh GNINGUE', '12', 'O58QZ', 'NAEZY', '72B', 'InPatient', '2022-12-26 16:00:13.0071', 'Asthme', '<p>1. paracetamol</p><p>2. vitamine c</p>'),
(9, 'Papa Cheikh GNINGUE', '12', 'QMZ2G', 'YG36R', '72B', 'OutPatient', '2022-12-29 23:26:07.6503', 'Asthme', '<p>1. Paracetamol</p><p>2.jnjdndkf</p><p>3.buf</p>'),
(10, 'Papa Cheikh GNINGUE', '12', 'QMZ2G', 'AOLFT', '72B', 'OutPatient', '2022-12-30 22:01:41.8080', 'Asthme', '<ol><li><strong>Paracetamol</strong>&nbsp;2 paquets</li><li><strong>Serum&nbsp;</strong>1bouteille</li><li><strong>CA5000 1boite</strong></li></ol>');

-- --------------------------------------------------------

--
-- Structure de la table `his_pwdresets`
--

CREATE TABLE `his_pwdresets` (
  `id` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_pwdresets`
--

INSERT INTO `his_pwdresets` (`id`, `email`, `token`, `status`, `pwd`) VALUES
(5, 'papacheikhgningue@esp.sn', '9337846cc9d3da85e8a4a4e61ee46145fd8c434d82a20ba1dfab30d068c28300effeaa7a51dd52c1b7075fed26e7262f5da608decf2ed082666121141e8987c5', 'Pending', '0OT1CLqYvi'),
(6, 'gningue.cheikh98@gmail.com', '7511043b6e1df159b10ab6254a33d82060948bbc142eae6f2e4b3a79c0f24ab5f25c923e6483481868a37d83cc65a1d8e2ae1f5e69381cd632ed9e1df803452f', 'Pending', 'RL4GpgBSan'),
(7, 'gningue.cheikh98@gmail.com', '029cf980e507d091082895426678008780ee826e1bf92689e53ce5574893acfbfbba11ee1f25c5b37c3b5bcf644e76276e036a0ed7682bcc534e217221882ff8', 'Pending', 'DPYTVHg2mh');

-- --------------------------------------------------------

--
-- Structure de la table `his_rendezvous`
--

CREATE TABLE `his_rendezvous` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `his_rendezvous`
--

INSERT INTO `his_rendezvous` (`id`, `nom`, `email`, `telephone`, `date`, `heure`) VALUES
(3, 'GNINGUE', 'papacheikhgningue@esp.sn', '77059672', '2023-01-01', '13:16:33'),
(4, 'TRAORE', 'jnjns@esp.sn', '65656', '2022-01-01', '13:31:41'),
(5, 'MAME AWA GUEYE', 'mameawagueye@esp.sn', '775995387', '2023-01-02', '23:24:18'),
(6, 'MAME AWA GUEYE', 'papacheikhgningue@esp.sn', '77059672', '2022-01-01', '01:03:48'),
(7, 'TRAORE', 'gningue.cheikh98@gmail.com', '77059672', '2022-01-01', '02:17:21'),
(8, 'MAME AWA GUEYE', 'papacheikhgningue@esp.sn', '77059672', '2022-01-01', '02:32:52'),
(9, 'TRAORE', 'xeusssadik@gmail.com', '77059672', '2022-01-01', '02:45:28'),
(10, 'MAME AWA GUEYE', 'xeusssadik@gmail.com', '65656', '2022-01-01', '02:48:18'),
(11, 'TRAORE', 'xeusssadik@gmail.com', '77059672', '2022-01-01', '02:51:44'),
(12, 'MAME AWA GUEYE', 'gningue.cheikh98@gmail.com', '77059672', '2022-01-01', '03:15:39');

-- --------------------------------------------------------

--
-- Structure de la table `his_surgery`
--

CREATE TABLE `his_surgery` (
  `s_id` int NOT NULL,
  `s_number` varchar(200) DEFAULT NULL,
  `s_doc` varchar(200) DEFAULT NULL,
  `s_pat_number` varchar(200) DEFAULT NULL,
  `s_pat_name` varchar(200) DEFAULT NULL,
  `s_pat_ailment` varchar(200) DEFAULT NULL,
  `s_pat_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `s_pat_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_vendor`
--

CREATE TABLE `his_vendor` (
  `v_id` int NOT NULL,
  `v_number` varchar(200) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `v_adr` varchar(200) DEFAULT NULL,
  `v_mobile` varchar(200) DEFAULT NULL,
  `v_email` varchar(200) DEFAULT NULL,
  `v_phone` varchar(200) DEFAULT NULL,
  `v_desc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `his_vitals`
--

CREATE TABLE `his_vitals` (
  `vit_id` int NOT NULL,
  `vit_number` varchar(200) DEFAULT NULL,
  `vit_pat_number` varchar(200) DEFAULT NULL,
  `vit_bodytemp` varchar(200) DEFAULT NULL,
  `vit_heartpulse` varchar(200) DEFAULT NULL,
  `vit_resprate` varchar(200) DEFAULT NULL,
  `vit_bloodpress` varchar(200) DEFAULT NULL,
  `vit_daterec` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `his_vitals`
--

INSERT INTO `his_vitals` (`vit_id`, `vit_number`, `vit_pat_number`, `vit_bodytemp`, `vit_heartpulse`, `vit_resprate`, `vit_bloodpress`, `vit_daterec`) VALUES
(7, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-28 23:50:20.979241');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `his_accounts`
--
ALTER TABLE `his_accounts`
  ADD PRIMARY KEY (`acc_id`);

--
-- Index pour la table `his_admin`
--
ALTER TABLE `his_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Index pour la table `his_assets`
--
ALTER TABLE `his_assets`
  ADD PRIMARY KEY (`asst_id`);

--
-- Index pour la table `his_docs`
--
ALTER TABLE `his_docs`
  ADD PRIMARY KEY (`doc_id`);

--
-- Index pour la table `his_equipments`
--
ALTER TABLE `his_equipments`
  ADD PRIMARY KEY (`eqp_id`);

--
-- Index pour la table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  ADD PRIMARY KEY (`lab_id`);

--
-- Index pour la table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  ADD PRIMARY KEY (`mdr_id`);

--
-- Index pour la table `his_patients`
--
ALTER TABLE `his_patients`
  ADD PRIMARY KEY (`pat_id`);

--
-- Index pour la table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  ADD PRIMARY KEY (`t_id`);

--
-- Index pour la table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  ADD PRIMARY KEY (`pay_id`);

--
-- Index pour la table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  ADD PRIMARY KEY (`phar_id`);

--
-- Index pour la table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  ADD PRIMARY KEY (`pharm_cat_id`);

--
-- Index pour la table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  ADD PRIMARY KEY (`pres_id`);

--
-- Index pour la table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `his_rendezvous`
--
ALTER TABLE `his_rendezvous`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `his_surgery`
--
ALTER TABLE `his_surgery`
  ADD PRIMARY KEY (`s_id`);

--
-- Index pour la table `his_vendor`
--
ALTER TABLE `his_vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- Index pour la table `his_vitals`
--
ALTER TABLE `his_vitals`
  ADD PRIMARY KEY (`vit_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `his_accounts`
--
ALTER TABLE `his_accounts`
  MODIFY `acc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `his_admin`
--
ALTER TABLE `his_admin`
  MODIFY `ad_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `his_assets`
--
ALTER TABLE `his_assets`
  MODIFY `asst_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `his_docs`
--
ALTER TABLE `his_docs`
  MODIFY `doc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `his_equipments`
--
ALTER TABLE `his_equipments`
  MODIFY `eqp_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  MODIFY `lab_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  MODIFY `mdr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `his_patients`
--
ALTER TABLE `his_patients`
  MODIFY `pat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  MODIFY `t_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  MODIFY `pay_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  MODIFY `phar_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  MODIFY `pharm_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  MODIFY `pres_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `his_rendezvous`
--
ALTER TABLE `his_rendezvous`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `his_surgery`
--
ALTER TABLE `his_surgery`
  MODIFY `s_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `his_vendor`
--
ALTER TABLE `his_vendor`
  MODIFY `v_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `his_vitals`
--
ALTER TABLE `his_vitals`
  MODIFY `vit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
