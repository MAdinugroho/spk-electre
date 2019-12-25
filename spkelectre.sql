/*
 Navicat Premium Data Transfer

 Source Server         : xampp
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : spkelectre

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 27/08/2019 15:33:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_akun
-- ----------------------------
DROP TABLE IF EXISTS `tbl_akun`;
CREATE TABLE `tbl_akun`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_akun
-- ----------------------------
INSERT INTO `tbl_akun` VALUES (1, 'adi@gmail.com', 'Adinugroho', '$2y$10$qQOOPBvIm2mzC2t7UaZSN.uUG44DMCElYgTjzY.t5YUS1NEVRvbSq', 'admin', '2019-07-21');
INSERT INTO `tbl_akun` VALUES (2, 'user@gmail.com', 'User', '$2y$10$E0wE1gwXOSAHUNYLXz3fu.q7OxH5z0qy4772GERzqOf0WX7tApI1a', 'user', '2019-08-04');
INSERT INTO `tbl_akun` VALUES (3, 'admin1@gmail.com', 'admin1', '$2y$10$/BuFBAnHoNhen0QPjjOUuuW1IpLyMgMPO9ZyoT2mmwrecl.DpNu7K', 'admin', '2019-07-13');

-- ----------------------------
-- Table structure for tbl_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alternatif`;
CREATE TABLE `tbl_alternatif`  (
  `kode_alternatif` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_alternatif` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_alternatif`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alternatif
-- ----------------------------
INSERT INTO `tbl_alternatif` VALUES ('A01', 'Bodeh');
INSERT INTO `tbl_alternatif` VALUES ('A02', 'Ulujami');
INSERT INTO `tbl_alternatif` VALUES ('A03', 'Comal');
INSERT INTO `tbl_alternatif` VALUES ('A04', 'Ampelgading');
INSERT INTO `tbl_alternatif` VALUES ('A05', 'Petarukan');
INSERT INTO `tbl_alternatif` VALUES ('A06', 'Taman');
INSERT INTO `tbl_alternatif` VALUES ('A07', 'Pemalang');
INSERT INTO `tbl_alternatif` VALUES ('A08', 'Bantarbolang');
INSERT INTO `tbl_alternatif` VALUES ('A09', 'Randudongkal');
INSERT INTO `tbl_alternatif` VALUES ('A10', 'Warungpring');
INSERT INTO `tbl_alternatif` VALUES ('A11', 'Moga');
INSERT INTO `tbl_alternatif` VALUES ('A12', 'Pulosari');
INSERT INTO `tbl_alternatif` VALUES ('A13', 'Watukumpul');
INSERT INTO `tbl_alternatif` VALUES ('A14', 'Belik');

-- ----------------------------
-- Table structure for tbl_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kriteria`;
CREATE TABLE `tbl_kriteria`  (
  `kode_kriteria` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kriteria` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bobot` double NULL DEFAULT NULL,
  PRIMARY KEY (`kode_kriteria`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kriteria
-- ----------------------------
INSERT INTO `tbl_kriteria` VALUES ('C01', 'Kelerengan', 15);
INSERT INTO `tbl_kriteria` VALUES ('C02', 'Penggunaan Lahan', 20);
INSERT INTO `tbl_kriteria` VALUES ('C03', 'Rawan Bencana Longso', 10);
INSERT INTO `tbl_kriteria` VALUES ('C04', 'Curah Hujan', 15);
INSERT INTO `tbl_kriteria` VALUES ('C05', 'Cadangan Air Tanah', 20);
INSERT INTO `tbl_kriteria` VALUES ('C06', 'Jenis Tanah', 20);

-- ----------------------------
-- Table structure for tbl_parameter
-- ----------------------------
DROP TABLE IF EXISTS `tbl_parameter`;
CREATE TABLE `tbl_parameter`  (
  `kode_parameter` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_parameter` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai_parameter` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_parameter`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_parameter
-- ----------------------------
INSERT INTO `tbl_parameter` VALUES (1, 'C01', '0-8%', '0');
INSERT INTO `tbl_parameter` VALUES (2, 'C01', '8-15%', '1');
INSERT INTO `tbl_parameter` VALUES (3, 'C01', '15-25%', '2');
INSERT INTO `tbl_parameter` VALUES (4, 'C01', '25-40%', '3');
INSERT INTO `tbl_parameter` VALUES (5, 'C01', '>40%', '4');
INSERT INTO `tbl_parameter` VALUES (6, 'C02', 'Hutan', '0');
INSERT INTO `tbl_parameter` VALUES (7, 'C02', 'Sawah/Ladang/Tambak', '1');
INSERT INTO `tbl_parameter` VALUES (8, 'C02', 'Kebun/Lapangan', '2');
INSERT INTO `tbl_parameter` VALUES (9, 'C02', 'Pemukiman', '3');
INSERT INTO `tbl_parameter` VALUES (10, 'C02', 'Industri', '4');
INSERT INTO `tbl_parameter` VALUES (11, 'C03', 'Sangat Rendah', '0');
INSERT INTO `tbl_parameter` VALUES (12, 'C03', 'Rendah', '1');
INSERT INTO `tbl_parameter` VALUES (13, 'C03', 'Sedang', '2');
INSERT INTO `tbl_parameter` VALUES (14, 'C03', 'Tinggi', '3');
INSERT INTO `tbl_parameter` VALUES (15, 'C03', 'Sangat Tinggi', '4');
INSERT INTO `tbl_parameter` VALUES (31, 'C04', '>4000', '0');
INSERT INTO `tbl_parameter` VALUES (32, 'C04', '2750-4000', '1');
INSERT INTO `tbl_parameter` VALUES (33, 'C04', '1500-2750', '2');
INSERT INTO `tbl_parameter` VALUES (34, 'C05', '>10 l/d/km2', '0');
INSERT INTO `tbl_parameter` VALUES (35, 'C05', '2.5 - 10 l/d/km2', '1');
INSERT INTO `tbl_parameter` VALUES (36, 'C05', '<2.5 l/d/km2', '2');
INSERT INTO `tbl_parameter` VALUES (37, 'C05', 'Merata Asin', '3');
INSERT INTO `tbl_parameter` VALUES (38, 'C05', 'Krisis Air', '4');
INSERT INTO `tbl_parameter` VALUES (39, 'C06', 'Gromosol', '0');
INSERT INTO `tbl_parameter` VALUES (40, 'C06', 'Latosol', '1');
INSERT INTO `tbl_parameter` VALUES (41, 'C06', 'Regosol', '2');
INSERT INTO `tbl_parameter` VALUES (42, 'C06', 'Alluvial', '3');

-- ----------------------------
-- Table structure for tbl_relasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_relasi`;
CREATE TABLE `tbl_relasi`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_kriteria` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` double NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 643 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_relasi
-- ----------------------------
INSERT INTO `tbl_relasi` VALUES (1, 'A01', 'C01', 1);
INSERT INTO `tbl_relasi` VALUES (2, 'A01', 'C02', 4);
INSERT INTO `tbl_relasi` VALUES (3, 'A01', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (111, 'A13', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (112, 'A14', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (7, 'A02', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (8, 'A02', 'C02', 1);
INSERT INTO `tbl_relasi` VALUES (9, 'A02', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (109, 'A11', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (110, 'A12', 'C05', 4);
INSERT INTO `tbl_relasi` VALUES (13, 'A03', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (14, 'A03', 'C02', 2);
INSERT INTO `tbl_relasi` VALUES (15, 'A03', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (107, 'A09', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (108, 'A10', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (19, 'A04', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (20, 'A04', 'C02', 4);
INSERT INTO `tbl_relasi` VALUES (21, 'A04', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (105, 'A07', 'C05', 2);
INSERT INTO `tbl_relasi` VALUES (106, 'A08', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (25, 'A05', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (26, 'A05', 'C02', 3);
INSERT INTO `tbl_relasi` VALUES (27, 'A05', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (103, 'A05', 'C05', 2);
INSERT INTO `tbl_relasi` VALUES (104, 'A06', 'C05', 0);
INSERT INTO `tbl_relasi` VALUES (31, 'A06', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (32, 'A06', 'C02', 3);
INSERT INTO `tbl_relasi` VALUES (33, 'A06', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (101, 'A03', 'C05', 2);
INSERT INTO `tbl_relasi` VALUES (102, 'A04', 'C05', 2);
INSERT INTO `tbl_relasi` VALUES (37, 'A07', 'C01', 0);
INSERT INTO `tbl_relasi` VALUES (38, 'A07', 'C02', 3);
INSERT INTO `tbl_relasi` VALUES (39, 'A07', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (99, 'A01', 'C05', 1);
INSERT INTO `tbl_relasi` VALUES (100, 'A02', 'C05', 3);
INSERT INTO `tbl_relasi` VALUES (43, 'A08', 'C01', 1);
INSERT INTO `tbl_relasi` VALUES (44, 'A08', 'C02', 0);
INSERT INTO `tbl_relasi` VALUES (45, 'A08', 'C03', 1);
INSERT INTO `tbl_relasi` VALUES (97, 'A13', 'C04', 0);
INSERT INTO `tbl_relasi` VALUES (98, 'A14', 'C04', 1);
INSERT INTO `tbl_relasi` VALUES (49, 'A09', 'C01', 2);
INSERT INTO `tbl_relasi` VALUES (50, 'A09', 'C02', 0);
INSERT INTO `tbl_relasi` VALUES (51, 'A09', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (95, 'A11', 'C04', 0);
INSERT INTO `tbl_relasi` VALUES (96, 'A12', 'C04', 1);
INSERT INTO `tbl_relasi` VALUES (55, 'A10', 'C01', 1);
INSERT INTO `tbl_relasi` VALUES (56, 'A10', 'C02', 3);
INSERT INTO `tbl_relasi` VALUES (57, 'A10', 'C03', 0);
INSERT INTO `tbl_relasi` VALUES (93, 'A09', 'C04', 1);
INSERT INTO `tbl_relasi` VALUES (94, 'A10', 'C04', 1);
INSERT INTO `tbl_relasi` VALUES (61, 'A11', 'C01', 1);
INSERT INTO `tbl_relasi` VALUES (62, 'A11', 'C02', 3);
INSERT INTO `tbl_relasi` VALUES (63, 'A11', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (91, 'A07', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (92, 'A08', 'C04', 1);
INSERT INTO `tbl_relasi` VALUES (67, 'A12', 'C01', 3);
INSERT INTO `tbl_relasi` VALUES (68, 'A12', 'C02', 2);
INSERT INTO `tbl_relasi` VALUES (69, 'A12', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (89, 'A05', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (90, 'A06', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (73, 'A13', 'C01', 4);
INSERT INTO `tbl_relasi` VALUES (74, 'A13', 'C02', 0);
INSERT INTO `tbl_relasi` VALUES (75, 'A13', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (87, 'A03', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (88, 'A04', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (79, 'A14', 'C01', 1);
INSERT INTO `tbl_relasi` VALUES (80, 'A14', 'C02', 0);
INSERT INTO `tbl_relasi` VALUES (81, 'A14', 'C03', 2);
INSERT INTO `tbl_relasi` VALUES (85, 'A01', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (86, 'A02', 'C04', 2);
INSERT INTO `tbl_relasi` VALUES (113, 'A01', 'C06', 0);
INSERT INTO `tbl_relasi` VALUES (114, 'A02', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (115, 'A03', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (116, 'A04', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (117, 'A05', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (118, 'A06', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (119, 'A07', 'C06', 3);
INSERT INTO `tbl_relasi` VALUES (120, 'A08', 'C06', 1);
INSERT INTO `tbl_relasi` VALUES (121, 'A09', 'C06', 1);
INSERT INTO `tbl_relasi` VALUES (122, 'A10', 'C06', 2);
INSERT INTO `tbl_relasi` VALUES (123, 'A11', 'C06', 2);
INSERT INTO `tbl_relasi` VALUES (124, 'A12', 'C06', 0);
INSERT INTO `tbl_relasi` VALUES (125, 'A13', 'C06', 2);
INSERT INTO `tbl_relasi` VALUES (126, 'A14', 'C06', 2);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `country` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `note` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_created` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Adinugroho', 'default.jpg', '81212583838', 'jalan gondang timur 2', 'Kota Semar', 'Indonesia', 'Admin Pertama', '2019-07-21');
INSERT INTO `tbl_user` VALUES (2, 'User', 'default.jpg', '81212583838', 'jalan gondang timur 2', 'Kota Semar', 'Indonesia', 'User Pertama', '2019-08-04');
INSERT INTO `tbl_user` VALUES (3, 'admin1', 'default.jpg', '81212583838', 'jalan gondang timur 2', 'Kota Semar', 'Indonesia', 'admin1', '2019-07-13');

SET FOREIGN_KEY_CHECKS = 1;
