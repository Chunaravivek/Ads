-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 05:32 AM
-- Server version: 8.0.16
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ads`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_date` int(20) NOT NULL,
  `modified_date` int(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '1' COMMENT '1 = on , 2 = off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `created_date`, `modified_date`, `status`) VALUES
(1, 'Axis Buz', 1653482712, 1653482712, 1),
(2, 'KB Creative', 1653482719, 1653482719, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '1' COMMENT '1 = Admin , 2 = User',
  `created_date` int(20) NOT NULL,
  `modified_date` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `password`, `status`, `created_date`, `modified_date`) VALUES
(1, 'admin admin', 'admin@admin.com', 'admin@123', 1, 1632744263, 1653385147);

-- --------------------------------------------------------

--
-- Table structure for table `ads_partner_wises`
--

CREATE TABLE `ads_partner_wises` (
  `id` int(14) NOT NULL,
  `acc_id` int(14) NOT NULL,
  `app_code` varchar(250) NOT NULL,
  `ad_partner` int(14) NOT NULL,
  `google_app_id` varchar(255) NOT NULL,
  `google_appopen` varchar(255) NOT NULL,
  `google_fullad` varchar(255) NOT NULL,
  `google_fullad_splash` varchar(255) NOT NULL,
  `google_reward_ad` varchar(255) NOT NULL,
  `google_banner` varchar(255) NOT NULL,
  `google_native` varchar(255) NOT NULL,
  `google_native_banner` varchar(255) NOT NULL,
  `status` int(14) NOT NULL DEFAULT '1' COMMENT '1 = active, 2 = deactive',
  `created_date` int(14) NOT NULL,
  `modified_date` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ads_partner_wises`
--

INSERT INTO `ads_partner_wises` (`id`, `acc_id`, `app_code`, `ad_partner`, `google_app_id`, `google_appopen`, `google_fullad`, `google_fullad_splash`, `google_reward_ad`, `google_banner`, `google_native`, `google_native_banner`, `status`, `created_date`, `modified_date`) VALUES
(1, 1, 'YyZfxA', 1, 'test', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-546456/1033173712', '11111', '13411', '45645', 'ca-app-pub-456456/2247696110', '11111111', 1, 1653484473, 1653484548);

-- --------------------------------------------------------

--
-- Table structure for table `ad_ids`
--

CREATE TABLE `ad_ids` (
  `id` int(11) NOT NULL,
  `acc_id` int(14) NOT NULL,
  `app_code` varchar(255) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `json_path` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mediation` int(14) NOT NULL DEFAULT '0',
  `google_app_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen_3` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_2` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_splash` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_reward_ad` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_full_ad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_full_native` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_native_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_dialog` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_date` int(14) DEFAULT NULL,
  `modified_date` int(14) DEFAULT NULL,
  `status` int(14) NOT NULL DEFAULT '1' COMMENT '1="Active",2="Deactive"',
  `update_status` int(11) DEFAULT '1' COMMENT '1 = ''Not Upadated'', 2 = ''Updated"',
  `ac_name` varchar(250) NOT NULL DEFAULT 'ac_name',
  `ad_call` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `adptive_banner` int(14) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `back_ad_count` int(14) NOT NULL DEFAULT '1',
  `email` varchar(250) NOT NULL DEFAULT 'girl6g4@gmail.com',
  `forward_ad_count` int(14) NOT NULL DEFAULT '1',
  `native_end_time` varchar(250) NOT NULL DEFAULT '23:59',
  `native_start_time` varchar(250) NOT NULL DEFAULT '09:10',
  `qureka_ad` int(14) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `qureka_url` varchar(250) NOT NULL DEFAULT 'http://1341.win.qureka.com/',
  `path` varchar(500) NOT NULL DEFAULT 'https://play.google.com/store/apps/details?id=com.dp.tiptopvideoplayer.videoplayer',
  `xcount` int(14) NOT NULL DEFAULT '3',
  `xminute` int(14) NOT NULL DEFAULT '1',
  `app_status` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `url` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'https://api.airtable.com/v0/appNNVZVVuqCOSiJL/roomvideo?api_key=keyUoKrn18vvgYnKd&sort%5B0%5D%5Bfield%5D=ID',
  `back_ad_set` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `anim` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `rec_apps` int(14) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `native_pre_load` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `multiple_start` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `in_house` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `position1` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `position2` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `position3` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `forward_ad` int(14) DEFAULT NULL COMMENT '0 = postion1, 1 = position2, 2 = position3',
  `back_ad` int(14) DEFAULT NULL COMMENT '0 = postion1, 1 = position2, 2 = position3',
  `ad_dialogue` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `open_inter` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `native_size` int(14) NOT NULL DEFAULT '3' COMMENT '1 = small, 2 = medium, 3 = dynamic',
  `exit_native_ad` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `nav_bar` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `banner_native` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `vpn_detect` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `transparent` int(20) NOT NULL DEFAULT '0',
  `vpn_button` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_ids`
--

INSERT INTO `ad_ids` (`id`, `acc_id`, `app_code`, `app_name`, `json_path`, `mediation`, `google_app_id`, `google_appopen`, `google_appopen_2`, `google_appopen_3`, `google_fullad`, `google_fullad_2`, `google_fullad_3`, `google_fullad_splash`, `google_reward_ad`, `google_banner`, `google_native`, `google_native_2`, `google_native_3`, `google_native_banner`, `fb_id`, `fb_full_ad`, `fb_banner`, `fb_full_native`, `fb_native_banner`, `fb_dialog`, `created_date`, `modified_date`, `status`, `update_status`, `ac_name`, `ad_call`, `adptive_banner`, `back_ad_count`, `email`, `forward_ad_count`, `native_end_time`, `native_start_time`, `qureka_ad`, `qureka_url`, `path`, `xcount`, `xminute`, `app_status`, `url`, `back_ad_set`, `anim`, `rec_apps`, `native_pre_load`, `multiple_start`, `in_house`, `position1`, `position2`, `position3`, `forward_ad`, `back_ad`, `ad_dialogue`, `open_inter`, `native_size`, `exit_native_ad`, `nav_bar`, `banner_native`, `vpn_detect`, `transparent`, `vpn_button`) VALUES
(1, 1, 'YyZfxA', 'Set Jiyo Caller Tunes', NULL, 0, 'test', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', '11111', '13411', '45645', 'ca-app-pub-456456/2247696110', NULL, NULL, '11111111', NULL, '', '', '', '', '', 1653484602, 1653484730, 1, 1, 'ac_name', 0, 1, 2, 'girl6g4@gmail.com', 2, '23:59', '09:10', 1, 'http://1341.win.qureka.com/', 'https://play.google.com/store/apps/details?id=com.rc.ffskintool.freediamondemote', 3, 1, 1, 'https://api.airtable.com/v0/appNNVZVVuqCOSiJL/roomvideo?api_key=keyUoKrn18vvgYnKd&sort%5B0%5D%5Bfield%5D=ID', 0, 0, 1, 1, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ad_partner`
--

CREATE TABLE `ad_partner` (
  `id` int(14) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_date` int(14) NOT NULL,
  `modified_date` int(14) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '1' COMMENT '1 = ACTIVE, 2 = INACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ad_partner`
--

INSERT INTO `ad_partner` (`id`, `name`, `created_date`, `modified_date`, `status`) VALUES
(1, 'FC3', 1653483675, 1653483675, 1),
(2, 'AdMob-Tushar', 1653483872, 1653483872, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `app_version` varchar(255) NOT NULL DEFAULT '1.0',
  `account_id` int(20) NOT NULL,
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firebase_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sender_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `app_code` varchar(255) NOT NULL,
  `account_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `recmnd_status` int(20) NOT NULL DEFAULT '1' COMMENT '1="enabled",2="disabled"',
  `ternding_status` int(20) NOT NULL DEFAULT '2' COMMENT '1="enabled",2="disabled"',
  `play_store` int(20) NOT NULL COMMENT '1 = ''pending'', 2 = ''live'' , 3 = ''suspended'' ',
  `created_date` int(20) NOT NULL,
  `modified_date` int(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '1' COMMENT '1=''Activate'',2=''Deactivate'',3=''Expired'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `app_version`, `account_id`, `package_name`, `firebase_id`, `sender_id`, `app_code`, `account_url`, `recmnd_status`, `ternding_status`, `play_store`, `created_date`, `modified_date`, `status`) VALUES
(1, 'Set Jiyo Caller Tunes', '1.0', 1, 'com.touchfield.allunitcons', 'AAAAk_3VYgE:APA91bGjjwdIrugVOgG7nbnQh4k29jUaO6JWTE4GSmO4A3lUU9axz6V1PGltBe0eSsSUvOGC1oazGgKtx0SM-sauucjLvI1YGLgxc_6uiTQKYpg86tkrMLImTqu-1kNerO1ROU0eH5Gx', 'undefined', 'YyZfxA', 'https://play.google.com/store/apps/developer?id=Axis+Buz', 1, 2, 1, 1653482755, 1653482755, 1),
(2, 'FFF FF Skin Tool, Elite Pass', '1.0', 2, 'com.kbc.elitepass.ffskintools', 'AAAAGQrizcA:APA91bELovDDXRErItEwmQQsXAOcPslR5HsFa1MTIxLtDmZo1wSk8Zrypctcg70u4WtUrfU7ZRLoX7JEmZqc8iKRaKM-EcyY1yFVBPCfAIdAPkp5zID2Rc0kEdS2Ag6oGQnX5WfsGWUT', 'undefined', 'V1PNd2', 'https://play.google.com/store/apps/developer?id=KB+Creative', 1, 2, 1, 1653482793, 1653542796, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(14) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type_id` int(20) NOT NULL DEFAULT '1' COMMENT '1 = ''City'', 2 = ''State'' , 3 = ''Country''	',
  `created_date` int(20) NOT NULL,
  `modified_date` int(20) NOT NULL,
  `status` int(20) NOT NULL COMMENT '1="Active",2="Deactive"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `type_id`, `created_date`, `modified_date`, `status`) VALUES
(1, 'Ahmedabad', 1, 1653539822, 1653539822, 1),
(2, 'Rajkot', 1, 1653541294, 1653541294, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_notify`
--

CREATE TABLE `email_notify` (
  `id` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` int(20) NOT NULL,
  `modified_date` int(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `email_notify`
--

INSERT INTO `email_notify` (`id`, `email`, `created_date`, `modified_date`, `status`) VALUES
(1, 'gmil@gmail.com', 1653482810, 1653482810, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ipwise_adid`
--

CREATE TABLE `ipwise_adid` (
  `id` int(11) NOT NULL,
  `acc_id` int(14) NOT NULL,
  `app_code` varchar(255) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `path` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'https://play.google.com/store/apps/details?id=com.dp.tiptopvideoplayer.videoplayer',
  `json_path` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mediation` int(14) NOT NULL DEFAULT '0',
  `google_app_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_appopen_3` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_2` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_fullad_splash` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_reward_ad` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `google_native_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
  `fb_full_ad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_full_native` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_native_banner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fb_dialog` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `city_id` int(20) NOT NULL,
  `created_date` int(14) DEFAULT NULL,
  `modified_date` int(14) DEFAULT NULL,
  `status` int(14) NOT NULL DEFAULT '1' COMMENT '1="Active",2="Deactive"',
  `ac_name` varchar(250) NOT NULL DEFAULT 'ac_name',
  `ad_call` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `adptive_banner` int(14) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `back_ad_count` int(14) NOT NULL DEFAULT '1',
  `email` varchar(250) NOT NULL DEFAULT 'girl6g4@gmail.com',
  `forward_ad_count` int(14) NOT NULL DEFAULT '1',
  `native_end_time` varchar(250) NOT NULL DEFAULT '23:59',
  `native_start_time` varchar(250) NOT NULL DEFAULT '09:10',
  `qureka_ad` int(14) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `qureka_url` varchar(250) NOT NULL DEFAULT 'http://1341.win.qureka.com/',
  `xcount` int(14) NOT NULL DEFAULT '3',
  `xminute` int(14) NOT NULL DEFAULT '1',
  `app_status` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `url` varchar(250) NOT NULL,
  `back_ad_set` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `anim` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `rec_apps` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `native_pre_load` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `multiple_start` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `in_house` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `position1` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `position2` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `position3` int(14) DEFAULT NULL COMMENT '0 = inter , 1 = open',
  `forward_ad` int(14) DEFAULT NULL COMMENT '0 = postion1, 1 = position2, 2 = position3',
  `back_ad` int(14) DEFAULT NULL COMMENT '0 = postion1, 1 = position2, 2 = position3',
  `ad_dialogue` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `open_inter` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `native_size` int(14) NOT NULL DEFAULT '3' COMMENT '1 = small, 2 = medium, 3 = large',
  `exit_native_ad` int(14) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `nav_bar` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `banner_native` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on',
  `vpn_detect` int(20) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `transparent` int(20) NOT NULL DEFAULT '0',
  `vpn_button` int(20) NOT NULL DEFAULT '0' COMMENT '0 = off, 1 = on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipwise_adid`
--

INSERT INTO `ipwise_adid` (`id`, `acc_id`, `app_code`, `app_name`, `path`, `json_path`, `mediation`, `google_app_id`, `google_appopen`, `google_appopen_2`, `google_appopen_3`, `google_fullad`, `google_fullad_2`, `google_fullad_3`, `google_fullad_splash`, `google_reward_ad`, `google_banner`, `google_native`, `google_native_2`, `google_native_3`, `google_native_banner`, `fb_id`, `fb_full_ad`, `fb_banner`, `fb_full_native`, `fb_native_banner`, `fb_dialog`, `city_id`, `created_date`, `modified_date`, `status`, `ac_name`, `ad_call`, `adptive_banner`, `back_ad_count`, `email`, `forward_ad_count`, `native_end_time`, `native_start_time`, `qureka_ad`, `qureka_url`, `xcount`, `xminute`, `app_status`, `url`, `back_ad_set`, `anim`, `rec_apps`, `native_pre_load`, `multiple_start`, `in_house`, `position1`, `position2`, `position3`, `forward_ad`, `back_ad`, `ad_dialogue`, `open_inter`, `native_size`, `exit_native_ad`, `nav_bar`, `banner_native`, `vpn_detect`, `transparent`, `vpn_button`) VALUES
(1, 1, 'YyZfxA', 'Set Jiyo Caller Tunes', 'https://play.google.com/store/apps/details?id=com.rc.ffskintool.freediamondemote', NULL, 0, 'test', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', '11111', '13411', '45645', 'ca-app-pub-456456/2247696110', 'ca-app-pub-456456/2247696110', 'ca-app-pub-456456/2247696110', '11111111', '0', '', '', '', '', '', 1, 1653541204, 1653541361, 1, 'ac_name', 0, 1, 2, 'girl6g4@gmail.com', 2, '23:59', '09:10', 1, 'http://1341.win.qureka.com/', 3, 1, 1, 'https://api.airtable.com/v0/appNNVZVVuqCOSiJL/roomvideo?api_key=keyUoKrn18vvgYnKd&sort%5B0%5D%5Bfield%5D=ID', 0, 0, 1, 1, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0),
(2, 1, 'YyZfxA', 'Set Jiyo Caller Tunes', 'https://play.google.com/store/apps/details?id=com.rc.ffskintool.freediamondemote', NULL, 0, 'test', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-3940256099942544/3419835294adsas', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', 'ca-app-pub-546456/1033173712', '11111', '13411', '45645', 'ca-app-pub-456456/2247696110', 'ca-app-pub-456456/2247696110', 'ca-app-pub-456456/2247696110', '11111111', '0', '', '', '', '', '', 2, 1653541361, 1653541361, 1, 'ac_name', 0, 1, 2, 'girl6g4@gmail.com', 2, '23:59', '09:10', 1, 'http://1341.win.qureka.com/', 3, 1, 1, 'https://api.airtable.com/v0/appNNVZVVuqCOSiJL/roomvideo?api_key=keyUoKrn18vvgYnKd&sort%5B0%5D%5Bfield%5D=ID', 0, 0, 1, 1, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `created_date` int(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '1' COMMENT '1 = ACTIVE, 2 = INACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `admin_id`, `username`, `password`, `ip_address`, `city`, `country`, `state`, `created_date`, `status`) VALUES
(1, 1, 'admin admin', 'admin@123', '49.36.70.200', 'Ahmedabad', 'India', 'Gujarat', 1653482677, 1),
(2, 1, 'admin admin', 'admin@123', '49.36.65.137', 'Ahmedabad', 'India', 'Gujarat', 1653539494, 1),
(3, 1, 'admin admin', 'admin@123', '49.36.65.137', 'Ahmedabad', 'India', 'Gujarat', 1653540277, 1),
(4, 1, 'admin admin', 'admin@123', '49.36.64.70', 'Ahmedabad', 'India', 'Gujarat', 1654079935, 1),
(5, 1, 'admin admin', 'admin@123', '49.36.70.161', 'Ahmedabad', 'India', 'Gujarat', 1654238434, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_partner_wises`
--
ALTER TABLE `ads_partner_wises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_ids`
--
ALTER TABLE `ad_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_partner`
--
ALTER TABLE `ad_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_notify`
--
ALTER TABLE `email_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipwise_adid`
--
ALTER TABLE `ipwise_adid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ads_partner_wises`
--
ALTER TABLE `ads_partner_wises`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ad_ids`
--
ALTER TABLE `ad_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ad_partner`
--
ALTER TABLE `ad_partner`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_notify`
--
ALTER TABLE `email_notify`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ipwise_adid`
--
ALTER TABLE `ipwise_adid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
