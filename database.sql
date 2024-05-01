-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2024 at 05:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `OrganicCosmeticStore`
CREATE DATABASE OrganicCosmeticStore;
USE OrganicCosmeticStore;
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Buddhism', '<p><b style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">Buddhism</b><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;(</span><span class=\"rt-commentedText nowrap\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\"><span class=\"IPA nopopups noexcerpt\" lang=\"en-fonipa\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\"><a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">/<span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; border-bottom: 1px dotted;\"><span title=\"/ˈ/: primary stress follows\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">ˈ</span><span title=\"\'b\' in \'buy\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">b</span><span title=\"/ʊ/: \'u\' in \'push\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">ʊ</span><span title=\"\'d\' in \'dye\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">d</span><span title=\"/ɪ/: \'i\' in \'kit\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">ɪ</span><span title=\"\'z\' in \'zoom\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">z</span><span title=\"/əm/: \'m\' in \'rhythm\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">əm</span></span>/</a></span></span><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\" title=\"Help:Pronunciation respelling key\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\"><i title=\"English pronunciation respelling\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\"><span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; font-size: 18.72px;\">BUUD</span>-ih-zəm</i></a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">,&nbsp;</span><span class=\"rt-commentedText nowrap\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\"><span class=\"IPA-label IPA-label-small\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; font-size: 17.68px;\"><a href=\"https://en.wikipedia.org/wiki/American_English\" title=\"American English\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">US</a>&nbsp;also&nbsp;</span><span class=\"IPA nopopups noexcerpt\" lang=\"en-fonipa\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\"><a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">/<span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; border-bottom: 1px dotted;\"><span title=\"/ˈ/: primary stress follows\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">ˈ</span><span title=\"\'b\' in \'buy\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">b</span><span title=\"/uː/: \'oo\' in \'goose\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">uː</span><span title=\"\'d\' in \'dye\'\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\">d</span></span>-/</a></span></span><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\" title=\"Help:Pronunciation respelling key\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\"><i title=\"English pronunciation respelling\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\"><span style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; font-size: 18.72px;\">BOOD</span>-</i></a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">),</span><sup id=\"cite_ref-FOOTNOTEWells2008_1-0\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-FOOTNOTEWells2008-1\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[1]</a></sup><sup id=\"cite_ref-FOOTNOTERoach2011_2-0\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-FOOTNOTERoach2011-2\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[2]</a></sup><sup id=\"cite_ref-3\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-3\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[3]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;also known as&nbsp;</span><b style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">Buddha Dharma</b><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;and&nbsp;</span><b style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">Dharmavinaya</b><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">, is an&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Indian_religion\" class=\"mw-redirect\" title=\"Indian religion\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">Indian religion</a><sup id=\"cite_ref-7\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-7\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[a]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Philosophical_tradition\" class=\"mw-redirect\" title=\"Philosophical tradition\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">philosophical tradition</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;based on&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Pre-sectarian_Buddhism\" title=\"Pre-sectarian Buddhism\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">teachings</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;attributed to&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/The_Buddha\" title=\"The Buddha\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">the Buddha</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">.</span><sup id=\"cite_ref-8\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-8\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[7]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;It is the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Major_religious_groups\" title=\"Major religious groups\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">world\'s fourth-largest religion</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">,</span><sup id=\"cite_ref-9\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-9\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[8]</a></sup><sup id=\"cite_ref-FOOTNOTELopez2001239_10-0\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-FOOTNOTELopez2001239-10\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[9]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;with over 520 million followers, known as&nbsp;</span><b style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">Buddhists</b><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">, who comprise seven percent of the global population.</span><sup id=\"cite_ref-Pew_2012a_11-0\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-Pew_2012a-11\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[10]</a></sup><sup id=\"cite_ref-12\" class=\"reference\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; line-height: 1; font-size: 12.48px; unicode-bidi: isolate; text-wrap: nowrap; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify; padding-left: 2px !important;\"><a href=\"https://en.wikipedia.org/wiki/Buddhism?useskin=vector#cite_note-12\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">[11]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;Buddhism originated in the eastern&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Gangetic_plain\" class=\"mw-redirect\" title=\"Gangetic plain\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">Gangetic plain</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">&nbsp;as a&nbsp;</span><span title=\"Sanskrit-language romanization\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\"><i lang=\"sa-Latn\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text;\"><a href=\"https://en.wikipedia.org/wiki/%C5%9Arama%E1%B9%87a\" title=\"Śramaṇa\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: var(--bg-transition); overflow-wrap: break-word; color: rgb(var(--theme-colors)) !important;\">śramaṇa</a></i></span><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">–movement in the 5th century&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Common_Era\" title=\"Common Era\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">BCE</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Silk_Road_transmission_of_Buddhism\" title=\"Silk Road transmission of Buddhism\" style=\"text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); user-select: text; background: none rgb(255, 255, 255); transition: var(--bg-transition); overflow-wrap: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify; color: rgb(var(--theme-colors)) !important;\">gradually spread throughout much of Asia via the Silk Road</a><span style=\"color: rgb(32, 33, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantrell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 20.8px; text-align: justify;\">.</span><br></p>', '2024-05-01 13:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `customer_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `cartProducts` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`customer_id`, `name`, `address`, `phone`, `payment_method`, `cartProducts`) VALUES
('', 'ashad', 'jjjjjjj', '021451', 'paypal', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `order_id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`order_id`, `product_id`, `quantity`, `price`, `date`) VALUES
('1', '01', 2, '200', '2024-04-29'),
('2', '02', 4, '500', '2024-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `organic_cosmetics`
--

CREATE TABLE `organic_cosmetics` (
  `ID` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `product_description` varchar(200) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organic_cosmetics`
--

INSERT INTO `organic_cosmetics` (`ID`, `product_name`, `product_type`, `category`, `Image`, `product_description`, `Price`) VALUES
(1, 'AyuGlow Ayurveda Fairness Cream', 'Face Cream 1', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Ayuglow-Ayurveda-Fairness-Day-Night-Cream-4-380x380.jpg', 'Moisturizing face cream for all skin types', 15.32),
(2, 'Fair and Fresh Coffee Cream', 'Face Cream 2', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Coffee-Face-Scrub-1-380x380.jpg', 'Hydrating face cream with SPF protection', 17.99),
(3, 'Orange Glow Face Cream', 'Face Serum 1', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Oreng-Glow-Face-Wash-1-380x380.jpg', 'Revitalizing face serum for youthful skin', 19.99),
(4, 'Rose Glow Day Cream', 'Face Serum 2', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Rose-Glow-Day-Cream-1-380x380.jpg', 'Anti-aging face serum with collagen boosters', 21.99),
(5, 'Organic Rose Petal Powder', 'Face Mask 1', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/49-380x380.jpg', 'Hydrating face mask for instant glow', 12.99),
(6, 'Priyanka Ubtan Face Pack', 'Face Mask 2', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/18-380x380.jpg', 'Detoxifying face mask for purified skin', 14.99),
(7, 'Rose Almond Cleanser Scrub Pack', 'Face Wash 1', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/12-380x380.jpg', 'Gentle face wash for daily cleansing', 9.99),
(8, 'Manali Fairness Bridal Face Pack', 'Face Wash 2', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/17-380x380.jpg', 'Exfoliating face wash for smooth skin', 11.99),
(9, 'Magic Tomato Face Pack', 'Toner 1', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/46-380x380.jpg', 'Balancing toner for even skin tone', 13.99),
(10, 'Green Tea Mint Cleanser Powder', 'Toner 2', 'Face', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/4.3-380x380.jpg', 'Refreshing toner to minimize pores', 15.99),
(11, 'Eraser Body Marks Removal Cream', 'Body Lotion 1', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Eraser-Body-Marks-Removal-Cream-4-380x380.jpg', 'Nourishing body lotion for smooth skin', 12.99),
(12, 'Sisiliana The Ice Lotion', 'Body Lotion 2', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/04/Sisiliana-04-380x380.png', 'Hydrating body lotion with shea butter', 14.99),
(13, 'Himalayan Pink Salt Coffee Scrub', 'Body Scrub 1', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/1-2-380x380.jpg', 'Exfoliating body scrub for silky skin', 16.99),
(14, 'Ayuglow Body Lotion scrub', 'Body Scrub 2', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Untitled-1-2-380x380.png', 'Invigorating body scrub with sea salt', 18.99),
(15, '99 Fairness Body Oil', 'Body Oil 1', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/99_3-1-380x380.jpg', 'Moisturizing body oil for radiant skin', 10.99),
(16, '99 Face Oil And Body Oil Set', 'Body Oil 2', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Face-and-Body_01-1-380x380.jpg', 'Nourishing body oil with vitamin E', 12.99),
(17, 'Muhurat Herbal Fairness Body Lotion ', 'Body Wash 1', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Muhurath_9.1-380x380.jpg', 'Gentle body wash for daily cleansing', 8.99),
(18, 'Mandara Powder Face And Body Wash', 'Body Wash 2', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/s5-380x380.jpg', 'Refreshing body wash with natural scents', 10.99),
(19, 'Sisiliana The Ice Lotion', 'Body Butter 1', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/04/Sisiliana-04-380x380.png', 'Luxurious body butter for intense hydration', 20.99),
(20, 'Ayuglow Body Lotion', 'Body Butter 2', 'Body', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Untitled-1-2-380x380.png', 'Whipped body butter for soft, supple skin', 22.99),
(21, 'Kasthuri Pack For Hair', 'Shampoo 1', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Kasthuri-Facial-Hair_6.4-380x380.jpg', 'Gentle shampoo for healthy hair', 9.99),
(22, 'Maya Green Herbal Pack  Hair Only', 'Shampoo 2', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_4-380x380.webp', 'Moisturizing shampoo for dry hair', 11.99),
(23, 'Kasturi Haldi Conditioner', 'Conditioner 1', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Kasthuri-Haldi-Face-Wash-2-380x380.jpg', 'Hydrating conditioner for soft hair', 10.99),
(24, 'Mint, Neem and Nutmeg Conditioner', 'Conditioner 2', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mint-Neem-and-Nutmeg-Face-Wash-4-380x380.jpg', 'Repairing conditioner for damaged hair', 12.99),
(25, '99 Fairness Hair Oil', 'Hair Mask 1', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/99_4-380x380.jpg', 'Deep conditioning hair mask for silkiness', 14.99),
(26, 'Eraser Marks ', 'Hair Mask 2', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Eraser-Body-Marks-Removal-Cream-4-380x380.jpg', 'Nourishing hair mask for shine and strength', 16.99),
(27, 'Roots Oil', 'Hair Oil 1', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Roots-Beard-Growth-Serum-1-380x380.jpg', 'Revitalizing hair oil for scalp nourishment', 13.99),
(29, 'Mantra Hair Serum', 'Hair Serum 1', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Oil-and-Shampoo-Cmbo-Set-4-380x380.jpg', 'Smoothing hair serum for frizz control', 11.99),
(30, 'Ayubrow – Ayurveda Hair', 'Hair Serum 2', 'Hair', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Ayubrow-Ayurveda-Eyebrow-and-Eyelash-Growth-Serum-4-380x380.jpg', 'Shine-enhancing hair serum for sleekness', 13.99),
(31, 'Ayubrow – Ayurveda Eyebrows ', 'Eye Cream 1', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Ayubrow-Ayurveda-Eyebrow-and-Eyelash-Growth-Serum-4-380x380.jpg', 'Revitalizing eye cream for tired eyes', 17.99),
(32, 'Samaya Under Eye Cream', 'Eye Cream 2', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Samaya-Under-Eye-Cream-1-380x380.jpg', 'Hydrating eye cream for fine lines', 19.99),
(33, 'Mandara Powder Eye Pack', 'Eye Serum 1', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/s5-380x380.jpg', 'Anti-aging eye serum for wrinkles', 21.99),
(34, '99 EyeOil And EyeOil Set', 'Eye Serum 2', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Face-and-Body_01-1-380x380.jpg', 'Brightening eye serum for dark circles', 23.99),
(35, 'Ayuglow Eye Gel', 'Eye Gel 1', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Untitled-1-2-380x380.png', 'Cooling eye gel for puffiness', 15.99),
(36, 'Rose Eye Gel', 'Eye Gel 2', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Rose-Hand-Cream-3-380x380.jpg', 'Firming eye gel for sagging skin', 17.99),
(37, 'Mantra Eye Pack', 'Eye Makeup Remover 1', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Oil-and-Shampoo-Cmbo-Set-4-380x380.jpg', 'Gentle makeup remover for eyes', 9.99),
(38, 'Organic Rose Remover', 'Eye Makeup Remover 2', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/49-380x380.jpg', 'Oil-free makeup remover for sensitive eyes', 11.99),
(39, 'Roots Eye Growth', 'Eyeliner 1', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Roots-Beard-Growth-Serum-1-380x380.jpg', 'Long-lasting eyeliner for defined eyes', 8.99),
(40, 'Ayuglow  Eyeliner', 'Eyeliner 2', 'Eyes', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Untitled-1-2-380x380.png', 'Waterproof eyeliner for all-day wear', 10.99),
(41, 'Mantra Miracle LIp Balm', 'Lip Balm 1', 'Lips', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Miracle-Hair-Growth-Oil-1-380x380.jpg', 'Moisturizing lip balm for smooth lips', 5.99),
(45, 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/s5-380x380.jpg', 'Lip Gloss 1', 'Lips', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/s5-380x380.jpg', 'Shiny lip gloss for a glossy finish', 9.99),
(48, 'Mandara Powder Lipstick', 'Lipstick 2', 'Lips', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/1-2-380x380.jpg', 'Matte lipstick for a sophisticated look', 14.99),
(49, 'Tea Tree Lip Liner', 'Lip Liner 1', 'Lips', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Tea-Tree-Face-Wash-1-380x380.jpg', 'Creamy lip liner for precise application', 7.99),
(51, 'Lavender  Cream', 'Hand Cream 1', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Lavender-Face-Wash-1-380x380.jpg', 'Hydrating hand cream for soft hands', 7.99),
(52, 'Maya Green Herbal Cream', 'Hand Cream 2', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_4-380x380.webp', 'Nourishing hand cream with shea butter', 9.99),
(53, 'Kasthuri Pack Soap', 'Hand Soap 1', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Kasthuri-Facial-Hair_6.4-380x380.jpg', 'Gentle hand soap for clean hands', 5.99),
(54, 'Tealeaf – Best Soap', 'Hand Soap 2', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/03/2-1-380x380.jpg', 'Moisturizing hand soap with natural oils', 7.99),
(55, '99 Fairness Hand Sanitizer', 'Hand Sanitizer 1', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/99_3-1-380x380.jpg', 'Antibacterial hand sanitizer gel', 4.99),
(56, 'Sisiliana The Ice', 'Hand Sanitizer 2', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/04/Sisiliana-04-380x380.png', 'Travel-sized hand sanitizer spray', 6.99),
(57, 'Himalayan Pink Salt Coffee', 'Hand Scrub 1', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/1-2-380x380.jpg', 'Exfoliating hand scrub for smooth skin', 8.99),
(58, 'Eraser Body Marks ', 'Hand Scrub 2', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Eraser-Body-Marks-Removal-Cream-4-380x380.jpg', 'Moisturizing hand scrub with sea salt', 10.99),
(60, '99 Oil ', 'Cuticle Oil 2', 'Hands', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Face-and-Body_01-1-380x380.jpg', 'Strengthens and conditions cuticles', 8.99),
(62, 'Mantra Miracle Cream', 'Foot Cream 2', 'Feet', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/str-marks-2-380x380.jpg', 'Healing foot cream for dry, rough feet', 10.99),
(67, 'Ayubrow', 'Foot Soak 1', 'Feet', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Ayubrow-Ayurveda-Eyebrow-and-Eyelash-Growth-Serum-4-380x380.jpg', 'Relaxing foot soak for tired, achy feet', 9.99),
(68, 'Roots Foot', 'Foot Soak 2', 'Feet', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Roots-Beard-Growth-Serum-1-380x380.jpg', 'Energizing foot soak with peppermint oil', 11.99),
(69, 'Priyanka Ubtan Spray', 'Foot Spray 1', 'Feet', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/18-380x380.jpg', 'Cooling foot spray for odor control', 7.99),
(71, 'Magic Moringa Growth Oil', 'Massage Oil 1', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Magic-Moringa-Face-Wash-1-380x380.jpg', 'Relaxing massage oil with natural scents', 14.99),
(72, 'Roots Beard Growth Serum', 'Massage Oil 2', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/03/2-1-380x380.jpg', 'Soothing massage oil for stress relief', 16.99),
(73, 'Mantra Miracle 2 in 1 Shampoo ', 'Facial Oil 1', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Ayurveda-2-In-1-Shampoo-Conditioner4-380x380.jpg', 'Nourishing facial oil for glowing skin', 18.99),
(74, 'Sisiliana The Ice Oil', 'Facial Oil 2', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/04/Sisiliana-04-380x380.png', 'Revitalizing facial oil for radiant complexion', 20.99),
(75, 'Mantra Miracle Stretch Marks ', 'Body Oil 1', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/str-marks-2-380x380.jpg', 'Moisturizing body oil for soft, supple skin', 12.99),
(76, '99 Fairness Body Oil', 'Body Oil 2', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/99_3-1-380x380.jpg', 'Hydrating body oil with natural extracts', 14.99),
(77, 'Mantra Hair Oil + Shampoo Combo', 'Hair Oil 1', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Oil-and-Shampoo-Cmbo-Set-4-380x380.jpg', 'Nourishing hair oil for shiny, healthy hair', 11.99),
(78, 'Ayuglow Hair Oil', 'Hair Oil 2', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Untitled-1-2-380x380.png', 'Repairing hair oil for damaged hair', 13.99),
(79, 'Ayubrow – Ayurveda Eyebrows', 'Cuticle Oil 1', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Ayubrow-Ayurveda-Eyebrow-and-Eyelash-Growth-Serum-4-380x380.jpg', 'Nourishing cuticle oil for healthy nails', 6.99),
(80, 'Muhurat Herbal Oil', 'Cuticle Oil 2', 'Mantra Oil', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Muhurath_9.1-380x380.jpg', 'Strengthening cuticle oil with vitamins', 8.99),
(81, 'Mantra Hair Oil + Shampoo Combo', 'Skincare Set 1', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Oil-and-Shampoo-Cmbo-Set-4-380x380.jpg', 'Complete skincare set for radiant complexion', 39.99),
(82, 'Maya Green Herbal Face Pack', 'Skincare Set 2', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_7.1-380x380.jpg', 'Essential skincare set for daily routine', 49.99),
(83, 'Maya Green Herbal Face Pack', 'Hair Care Bundle 1', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_7.1-380x380.jpg', 'Complete hair care bundle for healthy locks', 29.99),
(84, 'Maya Green Herbal Pack Only', 'Hair Care Bundle 2', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_4-380x380.webp', 'Nourishing hair care bundle with natural ingredients', 34.99),
(85, 'Maya Green Herbal Face Pack ', 'Body Care Kit 1', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Maya_7.1-380x380.jpg', 'Luxurious body care kit for pampering', 44.99),
(86, 'Chaya No Marks Set', 'Body Care Kit 2', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/CHaya-No-Marks-Pack-1-380x380.jpg', 'Moisturizing body care kit for dry skin', 39.99),
(87, 'Mantra Hair Oil + Shampoo Combo', 'Essential Oil Set 1', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Mantra-Oil-and-Shampoo-Cmbo-Set-4-380x380.jpg', 'Aromatic essential oil set for relaxation', 19.99),
(88, '99 Face Oil And Body Oil Set', 'Essential Oil Set 2', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Face-and-Body_01-1-380x380.jpg', 'Refreshing essential oil set for aromatherapy', 24.99),
(89, 'Muhurat Herbal Fairness Combo', 'Gift Set 1', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/01/Muhurath_9.1-380x380.jpg', 'Deluxe gift set for a special occasion', 54.99),
(90, 'Eraser Body Marks Removal Cream Combo', 'Gift Set 2', 'Bundle Deals', 'https://www.srisrimadhara.com/wp-content/uploads/2024/02/Eraser-Body-Marks-Removal-Cream-4-380x380.jpg', 'Pampering gift set for self-care', 49.99);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `imageFileName` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_name`, `product_type`, `category`, `imageFileName`, `product_description`, `price`) VALUES
(1, 'ugyhijoijiojoijio', 'guhjiijhhyuyfy', 'gfghhjhhhj', 'myfile.png', 'fgvhuhiijnjiyugt', 7854),
(2, 'abcd', 'abcd', 'abcd', 'Logo1.png', 'aaaaaaaaaaaaaa', 1458),
(3, 'eeeeeeee', 'eeee', 'eeeeeeeeee', 'code.png', 'nnnnnnnnnnnnn', 4444),
(4, 'eeeeeeee', 'eeee', 'eeeeeeeeee', 'code.png', 'jjjjjjjjjjjjjjjjj', 44);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `upwd` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `umobile` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `upwd`, `uemail`, `umobile`, `role`, `created_at`) VALUES
(1, 'abcd', '123', 'a@g.com', '12345678', 'consumer', '2024-04-17 15:46:55'),
(2, 'efgh', '123', 'e@g.com', '12345678', 'seller', '2024-04-18 04:46:00'),
(3, 'ijkl', '123', 'i@g.com', '12345678', 'seller', '2024-04-28 04:40:00'),
(4, 'mnop', '123', 'm@g.com', '12345678', 'consumer', '2024-04-28 17:30:18'),
(5, 'qrst', '123', 'q@g.com', '12345678', 'consumer', '2024-04-28 17:35:55'),
(6, 'uvwx', '123', 'u@g.com', '12345678', 'consumer', '2024-04-28 17:39:58'),
(7, 'mnop', '123', 'a@g.com', '12345678', 'consumer', '2024-04-28 17:43:47'),
(8, 'qrst', '123', 'q@g.com', '12345678', 'consumer', '2024-05-01 01:42:28'),
(9, 'admin', '123', 'admin@g.com', '12345678', 'admin', '2024-05-01 14:49:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organic_cosmetics`
--
ALTER TABLE `organic_cosmetics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
