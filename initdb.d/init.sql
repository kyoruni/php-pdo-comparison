CREATE DATABASE IF NOT EXISTS my_database;
USE my_database;

CREATE TABLE IF NOT EXISTS pokemons (
  id               INT UNSIGNED     NOT NULL AUTO_INCREMENT                                        COMMENT 'ID',
  no               INT UNSIGNED     NOT NULL                                                       COMMENT '図鑑No.',
  name             VARCHAR(255)     NOT NULL                                                       COMMENT '名前',
  flg_evolution    TINYINT UNSIGNED NOT NULL DEFAULT 0                                             COMMENT '進化フラグ',
  height           DECIMAL(3, 1)    NOT NULL                                                       COMMENT 'たかさ',
  weight           FLOAT            NOT NULL                                                       COMMENT 'おもさ',
  memo             VARCHAR(255)                                                                    COMMENT 'メモ',
  created_on       DATETIME         NOT NULL                                                       COMMENT '作成日時',
  modified_on      TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ポケモン';

INSERT INTO pokemons (no, name, flg_evolution, height, weight, memo, created_on) VALUES
(1, 'フシギダネ', 1, 0.7, 6.9, 'たねポケモン', '2006-01-02 15:04:05'),
(4, 'ヒトカゲ', 1, 0.6, 8.5, 'とかげポケモン', '2006-01-02 15:04:05'),
(6, 'ゼニガメ', 1, 0.5, 9.0, 'かめのこポケモン', '2006-01-02 15:04:05'),
(25, 'ピカチュウ', 1, 0.4, 6.0, 'ねずみポケモン', '2006-01-02 15:04:05'),
(151, 'ミュウ', 0, 0.4, 4.0, null, '2006-01-02 15:04:05'),
(890, 'ムゲンダイナ', 0, 20.0, 950.0, 'キョダイポケモン', '2006-01-02 15:04:05');
