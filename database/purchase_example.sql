
-- 購入情報編

-- おばちゃん毎の販売情報設定
CREATE TABLE IF NOT EXISTS `buyerproduct`(
  `id` int(6) unsigned NOT NULL,
  `shop_master_id` int(3) unsigned NOT NULL,
  `buyer_id` varchar(20) NOT NULL,
  `package_url` varchar(303) NOT NULL,
  `num` int(6),
  `rate` int(6),
  PRIMARY KEY (`id`,`shop_master_id`, `buyer_id`)
) DEFAULT CHARSET=utf8;
INSERT INTO `buyerproduct` (`id`,`shop_master_id`, `buyer_id`, `package_url`, `num`, `rate`) VALUES
  (100, 1, 'buyer_02122', 'https://2334nkl.irwo.akjha.jp/1', 100, 10),
  (101, 1, 'buyer_02122', 'https://2334nkl.irwo.akjha.jp/2', 50, 10),
  (102, 2, 'buyer_02122', 'https://2334nkl.irwo.akjha.jp/3', 30, 10),
  (103, 1, 'buyer_02122', 'https://2334nkl.irwo.akjha.jp/4', 70, 10)
;

-- based on answer https://stackoverflow.com/a/7745635/808921
-- 特定のおばちゃんのカゴに入っているの一覧を取得する
SELECT id, buyer_id, num, rate from buyerproduct where buyer_id <= 1;


-- based on answer https://stackoverflow.com/a/7745635/808921
-- 特定メーカーでの商品情報一覧を取得する
SELECT * from buyerproduct where shop_master_id = 1;