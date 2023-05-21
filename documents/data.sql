/*

 Source Server         : drona.db.elephantsql.com
 Source Server Type    : PostgreSQL
 Source Server Version : 110019
 Source Host           : drona.db.elephantsql.com:5432
 Source Catalog        : guistwkl
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110019
 File Encoding         : 65001

 Date: 14/05/2023 16:44:33
*/


-- ----------------------------
-- Type structure for citext
-- ----------------------------
DROP TYPE IF EXISTS "public"."citext";
CREATE TYPE "public"."citext" (
  INPUT = "public"."citextin",
  OUTPUT = "public"."citextout",
  RECEIVE = "public"."citextrecv",
  SEND = "public"."citextsend",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = S,
  DELIMITER = ',',
  COLLATABLE = true
);
ALTER TYPE "public"."citext" OWNER TO "postgres";

-- ----------------------------
-- Type structure for cube
-- ----------------------------
DROP TYPE IF EXISTS "public"."cube";
CREATE TYPE "public"."cube" (
  INPUT = "public"."cube_in",
  OUTPUT = "public"."cube_out",
  INTERNALLENGTH = VARIABLE,
  ALIGNMENT = double,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."cube" OWNER TO "postgres";
COMMENT ON TYPE "public"."cube" IS 'multi-dimensional cube ''(FLOAT-1, FLOAT-2, ..., FLOAT-N), (FLOAT-1, FLOAT-2, ..., FLOAT-N)''';

-- ----------------------------
-- Type structure for dblink_pkey_results
-- ----------------------------
DROP TYPE IF EXISTS "public"."dblink_pkey_results";
CREATE TYPE "public"."dblink_pkey_results" AS (
    "position" int4,
    "colname" text COLLATE "pg_catalog"."default"
    );
ALTER TYPE "public"."dblink_pkey_results" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gbtreekey16
-- ----------------------------
DROP TYPE IF EXISTS "public"."gbtreekey16";
CREATE TYPE "public"."gbtreekey16" (
  INPUT = "public"."gbtreekey16_in",
  OUTPUT = "public"."gbtreekey16_out",
  INTERNALLENGTH = 16,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gbtreekey16" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gbtreekey32
-- ----------------------------
DROP TYPE IF EXISTS "public"."gbtreekey32";
CREATE TYPE "public"."gbtreekey32" (
  INPUT = "public"."gbtreekey32_in",
  OUTPUT = "public"."gbtreekey32_out",
  INTERNALLENGTH = 32,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gbtreekey32" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gbtreekey4
-- ----------------------------
DROP TYPE IF EXISTS "public"."gbtreekey4";
CREATE TYPE "public"."gbtreekey4" (
  INPUT = "public"."gbtreekey4_in",
  OUTPUT = "public"."gbtreekey4_out",
  INTERNALLENGTH = 4,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gbtreekey4" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gbtreekey8
-- ----------------------------
DROP TYPE IF EXISTS "public"."gbtreekey8";
CREATE TYPE "public"."gbtreekey8" (
  INPUT = "public"."gbtreekey8_in",
  OUTPUT = "public"."gbtreekey8_out",
  INTERNALLENGTH = 8,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gbtreekey8" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gbtreekey_var
-- ----------------------------
DROP TYPE IF EXISTS "public"."gbtreekey_var";
CREATE TYPE "public"."gbtreekey_var" (
  INPUT = "public"."gbtreekey_var_in",
  OUTPUT = "public"."gbtreekey_var_out",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gbtreekey_var" OWNER TO "postgres";

-- ----------------------------
-- Type structure for ghstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."ghstore";
CREATE TYPE "public"."ghstore" (
  INPUT = "public"."ghstore_in",
  OUTPUT = "public"."ghstore_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."ghstore" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gtrgm
-- ----------------------------
DROP TYPE IF EXISTS "public"."gtrgm";
CREATE TYPE "public"."gtrgm" (
  INPUT = "public"."gtrgm_in",
  OUTPUT = "public"."gtrgm_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gtrgm" OWNER TO "postgres";

-- ----------------------------
-- Type structure for hstore
-- ----------------------------
DROP TYPE IF EXISTS "public"."hstore";
CREATE TYPE "public"."hstore" (
  INPUT = "public"."hstore_in",
  OUTPUT = "public"."hstore_out",
  RECEIVE = "public"."hstore_recv",
  SEND = "public"."hstore_send",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."hstore" OWNER TO "postgres";

-- ----------------------------
-- Type structure for intbig_gkey
-- ----------------------------
DROP TYPE IF EXISTS "public"."intbig_gkey";
CREATE TYPE "public"."intbig_gkey" (
  INPUT = "public"."_intbig_in",
  OUTPUT = "public"."_intbig_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."intbig_gkey" OWNER TO "postgres";

-- ----------------------------
-- Type structure for lquery
-- ----------------------------
DROP TYPE IF EXISTS "public"."lquery";
CREATE TYPE "public"."lquery" (
  INPUT = "public"."lquery_in",
  OUTPUT = "public"."lquery_out",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."lquery" OWNER TO "postgres";

-- ----------------------------
-- Type structure for ltree
-- ----------------------------
DROP TYPE IF EXISTS "public"."ltree";
CREATE TYPE "public"."ltree" (
  INPUT = "public"."ltree_in",
  OUTPUT = "public"."ltree_out",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."ltree" OWNER TO "postgres";

-- ----------------------------
-- Type structure for ltree_gist
-- ----------------------------
DROP TYPE IF EXISTS "public"."ltree_gist";
CREATE TYPE "public"."ltree_gist" (
  INPUT = "public"."ltree_gist_in",
  OUTPUT = "public"."ltree_gist_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."ltree_gist" OWNER TO "postgres";

-- ----------------------------
-- Type structure for ltxtquery
-- ----------------------------
DROP TYPE IF EXISTS "public"."ltxtquery";
CREATE TYPE "public"."ltxtquery" (
  INPUT = "public"."ltxtq_in",
  OUTPUT = "public"."ltxtq_out",
  INTERNALLENGTH = VARIABLE,
  STORAGE = extended,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."ltxtquery" OWNER TO "postgres";

-- ----------------------------
-- Type structure for query_int
-- ----------------------------
DROP TYPE IF EXISTS "public"."query_int";
CREATE TYPE "public"."query_int" (
  INPUT = "public"."bqarr_in",
  OUTPUT = "public"."bqarr_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."query_int" OWNER TO "postgres";

-- ----------------------------
-- Type structure for tablefunc_crosstab_2
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_2";
CREATE TYPE "public"."tablefunc_crosstab_2" AS (
    "row_name" text COLLATE "pg_catalog"."default",
    "category_1" text COLLATE "pg_catalog"."default",
    "category_2" text COLLATE "pg_catalog"."default"
    );
ALTER TYPE "public"."tablefunc_crosstab_2" OWNER TO "postgres";

-- ----------------------------
-- Type structure for tablefunc_crosstab_3
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_3";
CREATE TYPE "public"."tablefunc_crosstab_3" AS (
    "row_name" text COLLATE "pg_catalog"."default",
    "category_1" text COLLATE "pg_catalog"."default",
    "category_2" text COLLATE "pg_catalog"."default",
    "category_3" text COLLATE "pg_catalog"."default"
    );
ALTER TYPE "public"."tablefunc_crosstab_3" OWNER TO "postgres";

-- ----------------------------
-- Type structure for tablefunc_crosstab_4
-- ----------------------------
DROP TYPE IF EXISTS "public"."tablefunc_crosstab_4";
CREATE TYPE "public"."tablefunc_crosstab_4" AS (
    "row_name" text COLLATE "pg_catalog"."default",
    "category_1" text COLLATE "pg_catalog"."default",
    "category_2" text COLLATE "pg_catalog"."default",
    "category_3" text COLLATE "pg_catalog"."default",
    "category_4" text COLLATE "pg_catalog"."default"
    );
ALTER TYPE "public"."tablefunc_crosstab_4" OWNER TO "postgres";

-- ----------------------------
-- Table structure for appreciation
-- ----------------------------
DROP TABLE IF EXISTS "public"."appreciation";
CREATE TABLE "public"."appreciation" (
                                         "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "author" varchar(40) COLLATE "pg_catalog"."default",
                                         "title" varchar(120) COLLATE "pg_catalog"."default",
                                         "description" varchar(120) COLLATE "pg_catalog"."default",
                                         "usefulcount" int4,
                                         "replycount" int4,
                                         "createdat" date,
                                         "userid" varchar(40) COLLATE "pg_catalog"."default",
                                         "time" date
)
;

-- ----------------------------
-- Records of appreciation
-- ----------------------------

-- ----------------------------
-- Table structure for appreciationcomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."appreciationcomment";
CREATE TABLE "public"."appreciationcomment" (
                                                "commentid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                "id" varchar(255) COLLATE "pg_catalog"."default",
                                                "author" varchar(255) COLLATE "pg_catalog"."default",
                                                "userid" varchar(255) COLLATE "pg_catalog"."default",
                                                "comment" text COLLATE "pg_catalog"."default",
                                                "time" timestamp(6),
                                                "updatedat" timestamp(6),
                                                "histories" jsonb[]
)
;

-- ----------------------------
-- Records of appreciationcomment
-- ----------------------------

-- ----------------------------
-- Table structure for appreciationreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."appreciationreaction";
CREATE TABLE "public"."appreciationreaction" (
                                                 "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "time" timestamp(6),
                                                 "reaction" int2
)
;

-- ----------------------------
-- Records of appreciationreaction
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS "public"."article";
CREATE TABLE "public"."article" (
                                    "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                    "title" varchar(300) COLLATE "pg_catalog"."default",
                                    "name" varchar(300) COLLATE "pg_catalog"."default",
                                    "description" varchar(1000) COLLATE "pg_catalog"."default",
                                    "type" varchar(40) COLLATE "pg_catalog"."default",
                                    "content" varchar(100000) COLLATE "pg_catalog"."default",
                                    "authorid" varchar(40) COLLATE "pg_catalog"."default",
                                    "tags" varchar[] COLLATE "pg_catalog"."default",
                                    "status" varchar(1) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO "public"."article" VALUES ('01', 'This is title 01', 'This is name 01', 'This is description 01', 'type 01', '<div class="key-event__content">
    <p>Trong phần thủ tục, các luật sư bảo vệ người bị hại đề nghị HĐXX xác định tỷ lệ thương tích của bị hại vào các ngày 7, 10, và 12.12.2021, nhằm xem xét xử lý các bị cáo hành vi “cố ý gây thương tích. </p>
    <p>Bên cạnh đó, các luật sư đề nghị HĐXX xem xét và xác định Thái đồng phạm tội danh "giết người" với bị cáo Trang.</p>
    <table class="picture" align="center">
     <tbody>
      <tr>
       <td class="pic"> <img data-image-id="3910826" src="https://image.thanhnien.vn/w2048/Uploaded/2022/bahgtm/2022_07_21/thai-2-3830.jpg" data-width="2560" data-height="1697" class="cms-photo" alt="Xét xử vụ bé gái 8 tuổi bị bạo hành tử vong: Tòa cân nhắc khi trình chiếu video hành vi phạm tội  - ảnh 1" caption="Xét xử vụ bé gái 8 tuổi bị bạo hành tử vong: Tòa cân nhắc khi trình chiếu video hành vi phạm tội  - ảnh 1"> </td>
      </tr>
      <tr>
       <td class="caption"><p>Bị cáo Trung Thái và Quỳnh Trang tại phiên tòa sáng 21.7</p>
        <div class="source">
         <p>ngọc dương</p>
        </div></td>
      </tr>
     </tbody>
    </table>
   </div>', '77c35c38c3554ea6906730dbcfeca0f2', '{tag01,tag02}', 'A');
INSERT INTO "public"."article" VALUES ('02', 'This is title 02', 'This is name 02', 'This is description 02', 'type 02', 'This is content 02', '77c35c38c3554ea6906730dbcfeca0f2', '{tag01,tag02}', 'A');
INSERT INTO "public"."article" VALUES ('03', 'This is title 03', 'This is name 03', 'This is description 03', 'type 03', 'This is content 03', '77c35c38c3554ea6906730dbcfeca0f2', '{tag01,tag02}', 'A');
INSERT INTO "public"."article" VALUES ('04', 'This is title 04', 'This is name 04', 'This is description 04', 'type 04', 'This is content 04', '77c35c38c3554ea6906730dbcfeca0f2', '{tag01,tag02}', 'A');
INSERT INTO "public"."article" VALUES ('05', 'This is title 05', 'This is name 05', 'This is description 05', 'type 05', 'This is content 05', '77c35c38c3554ea6906730dbcfeca0f2', '{tag01,tag02}', 'A');
INSERT INTO "public"."article" VALUES ('abw6F9-ap', 'Điều gì đang xảy ra với thị trường xăng dầu?', '', 'Việt Nam tự chủ được 70% nguồn cung, có 36 doanh nghiệp đầu mối lo nhập hàng, 17.000 cửa hàng bán lẻ nhưng người dân vẫn không mua được xăng dầu.', 'Kinh doanh', '<p class="Normal" xss=removed>Ở TP HCM có 550 cửa hàng bán lẻ nhưng theo thống kê của quản lý thị trường, đến chiều qua, 137 cây xăng (chiếm 20% hệ thống) tại 19 quận, huyện thiếu hàng, đóng cửa. Nhiều người dân thậm chí phải dắt bộ xe máy nhiều cây số để tìm nơi đổ xăng.</p><figure data-size="true" itemprop="associatedMedia image" itemscope="" itemtype="http://schema.org/ImageObject" class="tplCaption action_thumb_added" xss=removed><div class="fig-picture" xss=removed><picture xss=removed><source data-srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=P5fMzE4p1lqAKYUOuSRUQg 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=RjFIqvg2F1YgLt0Db4xEHQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=b4UQ-3_8skwK-EJQfClODA 2x" srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=P5fMzE4p1lqAKYUOuSRUQg 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=RjFIqvg2F1YgLt0Db4xEHQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=b4UQ-3_8skwK-EJQfClODA 2x" xss=removed><img itemprop="contentUrl" loading="lazy" intrinsicsize="680x0" alt="Hàng trăm xe máy, ôtô vây quanh cây xăng trên đường Tô Ký, quận 12 để chờ đổ xăng sáng nay.  Hầu hết người dân phải chờ hơn 30 phút mới đến lượt đổ xăng. Ảnh: Quỳnh Trần" class="lazy lazied" src="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=P5fMzE4p1lqAKYUOuSRUQg" data-src="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-4371-1665550330.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=P5fMzE4p1lqAKYUOuSRUQg" data-ll-status="loaded" xss=removed></picture></div><figcaption itemprop="description" xss=removed><p class="Image" xss=removed>Hàng trăm xe máy, ôtô vây quanh cây xăng trên đường Tô Ký, quận 12 để chờ đổ xăng sáng nay. Hầu hết người dân phải chờ hơn 30 phút mới đến lượt đổ xăng. Ảnh: <em xss=removed>Đình Văn</em></p></figcaption></figure><p class="Normal" xss=removed>Không chỉ TP HCM, tình trạng này lan ra một số tỉnh, thành khác phía Nam như Bình Dương, Đồng Nai, Bình Phước hay khu vực Tây Nguyên, như Đăk Lăk...</p><p class="Normal" xss=removed>Riêng trong năm nay, đây không phải lần đầu có tình trạng thiếu xăng, các cửa hàng ngưng bán. Hồi tháng 2, khi nguồn cung từ Lọc dầu Nghi Sơn bị ảnh hưởng, cảnh tượng này đã diễn ra.</p><p class="Normal" xss=removed>Việt Nam hiện sản xuất được 70% nguồn cung xăng dầu trong nước thông qua hai nhà máy lọc dầu, phần còn lại nhập khẩu. Trong chuỗi cung ứng đưa xăng tới người dân, 36 doanh nghiệp đầu mối có chức năng nhập hàng đầu nguồn (từ nhà máy lọc dầu trong nước hoặc nhập từ nước ngoài). Tiếp đến là 500 thương nhân phân phối, những người mua lại từ các đầu mối và bán buôn cho các đại lý và sau cùng là 17.000 cửa hàng xăng dầu trên khắp cả nước. Tuy nhiên, những ngày qua, hệ thống phân phối với hàng chục nghìn điểm chạm này bộc lộ nhiều vấn đề.</p><p class="Normal" xss=removed>Chủ một doanh nghiệp kinh doanh xăng dầu cho rằng, quan trọng nhất trong kinh doanh bán lẻ xăng dầu là nguồn cung, chiết khấu, giá nhưng cả ba yếu tố này đều bất ổn thời gian qua.</p><p class="Normal" xss=removed><span xss=removed><strong xss=removed>Đầu tiên là nguồn cung đầu nguồn đã không còn dồi dào như trước. </strong></span>Vụ Thị trường trong nước (Bộ Công Thương) thừa nhận, nguyên nhân chính khiến loạt cửa hàng bán lẻ xăng dầu đóng cửa, ngừng bán xuất phát từ việc các doanh nghiệp đầu mối không có đủ nguồn tài chính để nhập hàng. Họ chỉ duy trì lượng hàng đủ để cung cấp cho hệ thống phân phối của mình và duy trì lượng dự trữ tồn kho theo quy định.</p><p class="Normal" xss=removed>Lãnh đạo một doanh nghiệp tại phía Nam chia sẻ, trước đây 3 tỷ đồng nhập được 2 tàu, nhưng giá hiện đã tăng vọt. "Cùng số tiền đó, giờ chỉ nhập được 1-1,5 tàu, mà vay ngân hàng thì khó do room tín dụng cạn", ông bộc bạch.</p><p class="Normal" xss=removed>Còn theo Bộ Tài chính, nguồn hàng ít hơn một phần vì chính các doanh nghiệp đầu mối hiện cũng e dè hơn khi nhập khẩu do giá thế giới biến động khó lường, nguy cơ thua lỗ cao. Bộ này dẫn số liệu từ hải quan cho thấy, trong quý III, sản lượng nhập khẩu giảm 40% với xăng, 35% với dầu diesel so với quý II. Ngoài 3 đầu mối nhập nhiên liệu cho máy bay, chỉ 19 trong số 33 doanh nghiệp đầu mối xăng dầu còn lại nhập khẩu.</p><p class="Normal" xss=removed>Cũng trong thời gian này, hàng loạt doanh nghiệp đầu mối bị rút giấy phép trong 1-1,5 tháng, đồng nghĩa họ cũng không thể tham gia nhập khẩu hoặc mua từ nguồn trong nước. Sau khi được trả giấy phép, các doanh nghiệp này cũng chưa thể nối lại việc nhập khẩu ngay do thời gian đàm phán mua, hàng về cảng nhanh nhất cũng 2-3 tuần.</p><p class="Normal" xss=removed>Có 5 doanh nghiệp đầu mối xăng dầu được hoãn lại việc rút giấy phép, nhưng sau khi có thông tin xử phạt, nguồn tin của <em xss=removed>VnExpress</em> cho biết, họ cũng bị ngân hàng siết tín dụng, không có nguồn tài chính nên ảnh hưởng tới nhập khẩu hàng.</p><p class="Normal" xss=removed>Tình hình bão lũ xảy ra tại miền Trung vừa qua cũng ảnh hưởng tới tiến độ nhập hàng. Như tại Saigon Petro, kế hoạch nhập 12.000 m3 xăng dầu từ nhà máy lọc dầu trong nước phải dời lại.</p><p class="Normal" xss=removed><span xss=removed><strong xss=removed>Tiếp đến là vấn đề về chiết khấu </strong></span>- nguyên nhân chính khiến các doanh nghiệp bán xăng dầu không muốn tiếp tục kinh doanh. Chiết khấu là khoản thoả thuận, giảm giá của đơn vị bán buôn xăng dầu (đầu mối, tổng đại lý, thương nhân phân phối) cho doanh nghiệp bán lẻ, chủ các cây xăng về 0 đồng, thậm chí âm.</p><p class="Normal" xss=removed>Khi nguồn cung dồi dào, giá thế giới giảm, doanh nghiệp đầu mối, thương nhân phân phối tăng chiết khấu cho cửa hàng, đại lý bán lẻ để đẩy lượng bán ra. Ngược lại, giá thế giới tăng, họ giảm mức chiết khấu này.</p><p class="Normal" xss=removed>Thậm chí gần đây xảy ra tình trạng chiết khấu âm. Theo phản ánh của một số chủ doanh nghiệp bán lẻ, các doanh nghiệp phân phối bán ra cho các cây xăng với giá cao hơn giá bán lẻ quy định, bằng cách thu thêm phí vận chuyển vào một hóa đơn khác. Vì thế, khi cộng phí vận chuyển, doanh nghiệp bán hàng ra với mức giá thấp hơn khi họ nhập về, khiến họ bị âm vốn.</p><p class="Normal" xss=removed>Ông Giang Chấn Tây, sở hữu 6 cửa hàng xăng dầu ở Trà Vinh, cho rằng doanh nghiệp bán lẻ là khâu cuối trong chuỗi cung ứng, cung cấp xăng dầu trực tiếp cho người tiêu dùng nhưng không được quan tâm đúng mức. "Càng bán ra càng lỗ. Một mặt do đứt nguồn cung mặt khác chủ cây xăng sợ lỗ nên không dám nhập hàng về", ông giải thích.</p><figure data-size="true" itemprop="associatedMedia image" itemscope="" itemtype="http://schema.org/ImageObject" class="tplCaption action_thumb_added" xss=removed><div class="fig-picture" xss=removed><picture xss=removed><source data-srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=ibQmeD9IzrOfguDOvoSJag 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=hFKGoYR-EK0dS1pITNHYGQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=sB2GKcgXS4mLZqTaBA5i1Q 2x" srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=ibQmeD9IzrOfguDOvoSJag 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=hFKGoYR-EK0dS1pITNHYGQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=sB2GKcgXS4mLZqTaBA5i1Q 2x" xss=removed><img itemprop="contentUrl" loading="lazy" intrinsicsize="680x0" alt="Cửa hàng trên đường Cộng Hoà, quận Tân Bình thông báo hết xăng kèm lý do đứt gãy nguồn hàng, ngày 12/10. Ảnh: Quỳnh Trần" class="lazy lazied" src="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=ibQmeD9IzrOfguDOvoSJag" data-src="https://i1-kinhdoanh.vnecdn.net/2022/10/12/-6261-1665558593.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=ibQmeD9IzrOfguDOvoSJag" data-ll-status="loaded" xss=removed></picture></div><figcaption itemprop="description" xss=removed><p class="Image" xss=removed>Cửa hàng trên đường Cộng Hoà, quận Tân Bình thông báo hết xăng kèm lý do "đứt gãy nguồn hàng", ngày 12/10. <em xss=removed>Ảnh: Quỳnh Trần</em></p></figcaption></figure><p class="Normal" xss=removed><span xss=removed><strong xss=removed>Giá xăng chưa thỏa đáng </strong></span>cũng là nguyên nhân khiến các doanh nghiệp nói "không muốn tiếp tục kinh doanh". Giá cơ sở xăng dầu mỗi kỳ điều hành do liên Bộ Công Thương - Tài chính quyết định, là căn cứ để xác định mức giá bán lẻ mỗi lít nhiên liệu cho người tiêu dùng. Nhưng theo 36 doanh nghiệp đã gửi đơn kiến nghị lên Thủ tướng, chi phí thực tế chưa được phản ánh đầy đủ và nhà điều hành chậm điều chỉnh các <a href="https://vnexpress.net/se-xem-xet-dieu-chinh-chi-phi-kinh-doanh-xang-dau-4518026.html" rel="dofollow" xss=removed>chi phí kinh doanh</a><span xss=removed>, </span>kìm giá khiến bất ổn gia tăng.</p><p class="Normal" xss=removed>Trong chi phí kinh doanh có khoản đưa xăng dầu về đến cảng, chi phí vận tải tạo nguồn trong nước... Các phụ phí, chi phí kinh doanh này vừa qua tăng 7-8 lần so với trước đây và chưa được phán ánh đủ trong giá cơ sở. Hiện chi phí vận chuyển từ nước ngoài về Việt Nam đã được Bộ Tài chính điều chỉnh từ kỳ điều hành 21/9; còn chi phí vận chuyển xăng dầu từ nhà máy về cảng và premium trong nước tới hôm qua, ở kỳ điều hành ngày 11/10, mới điều chỉnh</p><p class="Normal" xss=removed>Do đó, khi chưa được điều chỉnh chi phí hợp lý khiến kinh doanh bị lỗ, nhà cung cấp (đầu mối, thương nhân phân phối) hạn chế bán ra. Điển hình là hơn một tuần nay, từ sau kỳ điều hành 3/10, nguồn cung từ các thương nhân đầu mối bán ra rất ít, chỉ cung cấp một lượng rất nhỏ với những doanh nghiệp có hợp đồng, để "cầm cự qua ngày".</p><p class="Normal" xss=removed>Ông Lê Văn Mỵ, Tổng giám đốc Công ty cổ phần thương mại Hóc Môn - đơn vị đang sở hữu 11 cửa hàng và 21 đại lý bán lẻ ở TP HCM cho biết, từ đầu năm đến nay công ty ông đã lỗ 8 tỷ đồng. Ông lo ngại nếu vẫn cứ thiếu cung, chiết khấu về 0 đồng, doanh nghiệp có nguy cơ giải thể.</p><p class="Normal" xss=removed>Mỗi ngày tổng sản lượng tiêu thụ xăng dầu bình quân của TP HCM khoảng 6.880 m3, nhưng một tuần qua luôn ghi nhận thiếu hụt. Lãnh đạo một doanh nghiệp tại phía Nam - nơi xảy ra chủ yếu việc khan hiếm xăng - chia sẻ, điều quan trọng trong kinh doanh là lợi nhuận phải đảm bảo, nhưng triền miên khó khăn, thua lỗ từ đầu mối, thương nhân phân phối tới đại lý thì rất khó.</p><p class="Normal" xss=removed>"Cái gốc là giá, tức là các yếu tố cấu thành trong giá cơ sở phải đảm bảo tính đúng, đủ để ít nhất doanh nghiệp hoà vốn", ông nêu.</p><figure class="item_slide_show clearfix" xss=removed><div id="video_parent_364576" class="box_embed_video_parent embed_video_new" data-vcate="1003834" data-vscate="1003004" data-vscaten="Thời sự" data-vid="364576" data-ratio="1" data-articleoriginal="4521984" data-ads="1" data-license="1" data-duration="122" data-brandsafe="0" data-type="0" data-play="1" data-frame="" data-aot="Mua bán căng thẳng ở cây xăng" data-videoclassify="Ban Video" data-initdom="1" data-view="inview" data-auto="1" data-status="play" xss=removed><div id="embed_video_364576" class="box_embed_video" xss=removed><div class="bg_overlay_small_unpin" xss=removed></div><div class="bg_overlay_small" xss=removed></div><div class="embed-container" xss=removed><div id="video-364576" xss=removed><div id="parser_player_364576" class="media_content" xss=removed><div id="videoContainter_364576" class="videoContainter" xss=removed><div class="video-js vjs-default-skin vjs-controls-enabled vjs-workinghover vjs-v7 media-video-364576-dimensions vjs-has-started vjs-paused vjs-ended vjs-user-inactive" data-ex="st=1&bs=0&pt=1" adsconfig="{" ads?iu=\\/27973503\\/Vnexpress\\/Desktop\\/Instream.preroll\\/Kinhdoanh\\/Kinhdoanh.detail&description_url vnexpress.net&tfcd=0&npa sz=640x360&gdfp_req output=vast&unviewed_position_start env=vp&impl s&correlator="," id="div-gpt-ad-overlay"><div xss=removed></div></div>[removed]var gR=!0,sR="div-overlay-0"+Math.round(1E6*Math.random()),eL=document.getElementById("div-gpt-ad-overlay");if(eL){eL.firstChild.id=sR;if(!window.googletag||!googletag.apiReady){gR=!1;var googletag=window.googletag||{cmd:[]},sb=document.getElementsByTagName("script")[0],sa=document.createElement("script");sa.setAttribute("type","text/javascript");sa.setAttribute("src","https://www.googletagservices.com/tag/js/gpt.js");sa.setAttribute("async","true");sb[removed].appendChild(sa)}try{googletag.cmd.push(function(){var a=googletag.defineSlot("/27973503/Vnexpress/Desktop/Overlay/Kinhdoanh/Kinhdoanh.detail",["fluid", [480, 70]],sR);a&&(a.addService(googletag.pubads()),gR?googletag.pubads().refresh([a]):(googletag.pubads().enableSingleRequest(),googletag.enableServices(),googletag.pubads().refresh([a])))})}catch(a){}};[removed]","size":"480x70","offset":"30%","skipOffset":"00:00:01","duration":"00:00:15"}]}" ads="" active-mode="720" data-subtitle="0" max-mode="720" data-mode="240|360|480|720" type="application/x-mpegURL" src="https://d1.vnecdn.net/vnexpress/video/video/web/mp4/,240p,360p,480p,,/2022/10/11/tranh-cai-khi-mua-xang-1665474761/vne/master.m3u8" webkit-playsinline="" playsinline="true" preload="auto" id="media-video-364576" lang="vi" role="region" aria-label="Video Player" style="margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; height: 376.875px; vertical-align: top; color: rgb(255, 255, 255); position: relative; font-size: 10px; line-height: 1; font-family: Arial, Helvetica, sans-serif; user-select: none;"><div class="vjs-text-track-display" aria-live="off" aria-atomic="true" xss=removed></div><div class="vjs-loading-spinner" dir="ltr" xss=removed><span class="vjs-control-text" xss=removed>Video Player is loading.</span></div>&lt;button class="vjs-big-play-button" type="button" title="" aria-disabled="false" style="padding: 0px; box-sizing: inherit; text-rendering: optimizelegibility; border-width: initial; border-style: none; border-color: initial; outline: 0px; background: url([removed]PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAxNi4wLjMsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB3aWR0aD0iNTBweCIgaGVpZ2h0PSI1MHB4IiB2aWV3Qm94PSItMSAtMSA1MCA1MCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMSAtMSA1MCA1MCIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8cmVjdCB4PSItMSIgeT0iLTEiIGZpbGw9Im5vbmUiIHdpZHRoPSI1MCIgaGVpZ2h0PSI1MCIvPg0KPGNpcmNsZSBmaWxsPSJub25lIiBzdHJva2U9IiNGRkZGRkYiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBjeD0iMjQiIGN5PSIyNCIgcj0iMjIuNSIvPg0KPHBvbHlnb24gZmlsbD0iI0ZGRkZGRiIgcG9pbnRzPSIxOC41MzEsMTEuNTg3IDE4LjUzMSwzNi40MTMgMzcuMjgsMjQgIi8+DQo8L3N2Zz4NCg==") center center / auto 20% no-repeat rgba(0, 0, 0, 0.1); transition: all 0.5s ease 0s; appearance: none; position: absolute; top: 0px; left: 0px; opacity: 0.85; width: 670px; height: 376.875px;"&gt;<span aria-hidden="true" class="vjs-icon-placeholder" xss=removed></span><span class="vjs-control-text" aria-live="polite" xss=removed></span>&lt;/button&gt;<div class="vjs-control-bar" dir="ltr" xss=removed>&lt;button class="vjs-play-control vjs-control vjs-button vjs-paused vjs-ended" type="button" title="Replay" aria-disabled="false" style="padding: 0px; box-sizing: inherit; text-rendering: optimizelegibility; border-width: initial; border-style: none; border-color: initial; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: none 0s ease 0s; appearance: none; position: relative; height: 50px; width: 5em; flex: 0 0 auto;"&gt;<span aria-hidden="true" class="vjs-icon-placeholder" xss=removed></span><span class="vjs-control-text" aria-live="polite" xss=removed>Replay</span>&lt;/button&gt;<div class="vjs-current-time vjs-time-control vjs-control" xss=removed><span class="vjs-control-text" xss=removed>Hiện tại </span><span class="vjs-current-time-display" aria-live="off" xss=removed>2:02</span></div><div class="vjs-time-control vjs-time-divider" xss=removed><div xss=removed><span xss=removed>/</span></div></div><div class="vjs-duration vjs-time-control vjs-control" xss=removed><span class="vjs-control-text" xss=removed>Thời lượng </span><span class="vjs-duration-display" aria-live="off" xss=removed>2:02</span></div><div class="vjs-progress-control vjs-control" xss=removed><div tabindex="0" class="vjs-progress-holder vjs-slider vjs-slider-horizontal" role="slider" aria-valuenow="100.00" aria-valuemin="0" aria-valuemax="100" aria-label="Progress Bar" aria-valuetext="2:02 of 2:02" xss=removed><div class="vjs-load-progress" xss=removed><span class="vjs-control-text" xss=removed><span xss=removed>Đã tải</span>: 0%</span><div xss=removed></div></div><div class="vjs-play-progress vjs-slider-bar" xss=removed><div class="vjs-time-tooltip" xss=removed></div><span class="vjs-control-text" xss=removed><span xss=removed>Tiến trình</span>: 0%</span></div></div></div><div class="vjs-volume-panel vjs-control vjs-volume-panel-vertical" xss=removed>&lt;button class="vjs-mute-control vjs-control vjs-button vjs-vol-0" type="button" title="Bỏ tắt tiếng" aria-disabled="false" style="padding: 0px 2em 3em; box-sizing: inherit; text-rendering: optimizelegibility; border-width: initial; border-style: none; border-color: initial; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: none 0s ease 0s; appearance: none; width: 5em; height: 50px; position: relative; flex: 0 0 auto;"&gt;<span aria-hidden="true" class="vjs-icon-placeholder" xss=removed></span><span class="vjs-control-text" aria-live="polite" xss=removed>Bỏ tắt tiếng</span>&lt;/button&gt;<div class="vjs-volume-control vjs-control vjs-volume-vertical" xss=removed><div tabindex="0" class="vjs-volume-bar vjs-slider-bar vjs-slider vjs-slider-vertical" role="slider" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" aria-label="Volume Level" aria-live="polite" aria-valuetext="0%" xss=removed><div class="vjs-volume-level" xss=removed><span class="vjs-control-text" xss=removed></span></div></div></div></div>&lt;button class="vjs-fullscreen-control vjs-control vjs-button" type="button" title="Toàn màn hình" aria-disabled="false" style="padding: 0px; box-sizing: inherit; text-rendering: optimizelegibility; border-width: initial; border-style: none; border-color: initial; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: none 0s ease 0s; appearance: none; position: relative; height: 50px; width: 5em; flex: 0 0 auto;"&gt;<span aria-hidden="true" class="vjs-icon-placeholder" xss=removed></span><span class="vjs-control-text" aria-live="polite" xss=removed>Toàn màn hình</span>&lt;/button&gt;</div><div class="fp-sound-status-container" id="364576_soundTopRight" xss=removed></div><div class="share-hover" xss=removed><a class="share-item" xss=removed>&lt;svg class="ic ic-face"&gt;<use xss=removed></use>&lt;/svg&gt;</a><a class="share-item" xss=removed>&lt;svg class="ic ic-twit"&gt;<use xss=removed></use>&lt;/svg&gt;</a><a class="share-item" xss=removed>&lt;svg class="ic ic-link"&gt;<use xss=removed></use>&lt;/svg&gt;</a></div></div></div></div></div></div></div></div><figcaption class="desc_cation" xss=removed><div class="inner_caption" xss=removed><p class="Image" xss=removed>Không khí căng thẳng khi mua xăng tại TP HCM. Video: <em xss=removed>Thịnh Việt - Điệp Khang</em></p></div></figcaption></figure><p class="Normal" xss=removed><span xss=removed><strong xss=removed>"Điều hành của hai bộ Công Thương, Tài chính <a href="https://vnexpress.net/doanh-nghiep-to-bo-cong-thuong-tai-chinh-dieu-hanh-xang-dau-co-van-de-4520554.html" rel="dofollow" xss=removed>có vấn đề</a>",</strong></span> theo 36 doanh nghiệp kinh doanh tại TP HCM. Hai cơ quan được giao nhiệm vụ điều hành thị trường và <a href="https://vnexpress.net/chu-de/gia-xang-hom-nay-3026" rel="dofollow" xss=removed>giá xăng dầu </a>thời gian qua bị doanh nghiệp cho rằng "phản ứng chậm, và đùn đẩy trách nhiệm".</p><p class="Normal" xss=removed>Trước khi quyết định điều chỉnh chi phí kinh doanh xăng dầu được Bộ Tài chính đưa ra ngày 7/10, Bộ Công Thương cho hay đã ít nhất 4 lần đề xuất cơ quan này điều chỉnh, nhưng chưa được đồng thuận. Bộ này đánh giá việc điều chỉnh chậm là nguyên nhân khiến chiết khấu giảm về 0, cửa hàng bán lẻ bị lỗ...</p><p class="Normal" xss=removed>Trong khi đó, Bộ Tài chính cho rằng việc đảm bảo nguồn cung xăng dầu, các chi phí trung gian, tiết giảm chi phí quản trị doanh nghiệp xăng dầu thuộc trách nhiệm của Bộ Công Thương và các doanh nghiệp.</p><p class="Normal" xss=removed>Bộ trưởng Tài chính Hồ Đức Phớc ngày 10/10 thừa nhận có trách nhiệm trong đưa ra chi phí định mức kinh doanh xăng dầu và tham mưu Chính phủ trình Quốc hội các khoản thuế phí với xăng dầu. Tuy nhiên, quản lý doanh nghiệp đầu mối, doanh nghiệp phân phối và bán lẻ thuộc về trách nhiệm của Bộ Công Thương.</p><div class="width_common box-tinlienquanv2 " xss=removed><article class="item-news" xss=removed><div class="thumb-art" xss=removed><a href="https://vnexpress.net/doanh-nghiep-to-bo-cong-thuong-tai-chinh-dieu-hanh-xang-dau-co-van-de-4520554.html" data-itm-source="#vn_source=Detail-KinhDoanh_ViMo-4521590&vn_campaign=Box-TinXemThem&vn_medium=Item-1&vn_term=Desktop&vn_thumb=1" class="thumb thumb-5x3" title="Doanh nghiệp xăng dầu: Bộ Công Thương, Tài chính ''điều hành có vấn đề''" data-itm-added="1" xss=removed><picture xss=removed><source data-srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=1&fit=crop&s=fB3_KEuch8SjEI_kAWsgSg 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=2&fit=crop&s=aEt0kGO9WFmxC0uymfC6mA 2x" srcset="https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=1&fit=crop&s=fB3_KEuch8SjEI_kAWsgSg 1x, https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=2&fit=crop&s=aEt0kGO9WFmxC0uymfC6mA 2x" xss=removed><img loading="lazy" intrinsicsize="180x108" alt="Doanh nghiệp xăng dầu\\: Bộ Công Thương, Tài chính ''điều hành có vấn đề''" class="lazy lazied" src="https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=1&fit=crop&s=fB3_KEuch8SjEI_kAWsgSg" data-src="https://i1-kinhdoanh.vnecdn.net/2022/10/07/-1507-1665148345.jpg?w=180&h=108&q=100&dpr=1&fit=crop&s=fB3_KEuch8SjEI_kAWsgSg" data-ll-status="loaded" xss=removed></picture></a></div><h4 class="title-news" xss=removed><a href="https://vnexpress.net/doanh-nghiep-to-bo-cong-thuong-tai-chinh-dieu-hanh-xang-dau-co-van-de-4520554.html" data-itm-source="#vn_source=Detail-KinhDoanh_ViMo-4521590&vn_campaign=Box-TinXemThem&vn_medium=Item-1&vn_term=Desktop&vn_thumb=1" title="Doanh nghiệp xăng dầu: Bộ Công Thương, Tài chính ''điều hành có vấn đề''" data-itm-added="1" xss=removed>Doanh nghiệp xăng dầu: Bộ Công Thương, Tài chính ''điều hành có vấn đề''</a></h4><p class="description" xss=removed><a data-itm-source="#vn_source=Detail-KinhDoanh_ViMo-4521590&vn_campaign=Box-TinXemThem&vn_medium=Item-1&vn_term=Desktop&vn_thumb=1" href="https://vnexpress.net/doanh-nghiep-to-bo-cong-thuong-tai-chinh-dieu-hanh-xang-dau-co-van-de-4520554.html" title="Doanh nghiệp xăng dầu: Bộ Công Thương, Tài chính ''điều hành có vấn đề''" data-itm-added="1" xss=removed>Các doanh nghiệp cho rằng cơ quan quản lý điều hành xăng dầu trái với quy luật cung cầu, để giá mua cao hơn bán khiến nhiều cây xăng thua lỗ, đóng cửa.</a> <span class="meta-news" xss=removed><a class="count_cmt" href="https://vnexpress.net/doanh-nghiep-to-bo-cong-thuong-tai-chinh-dieu-hanh-xang-dau-co-van-de-4520554.html#box_comment_vne" xss=removed>&lt;svg class="ic ic-comment"&gt;<use xss=removed></use>&lt;/svg&gt; <span class="font_icon widget-comment-4520554-1" xss=removed>230</span></a></span></p></article></div><p class="Normal" xss=removed>Các phụ phí, chi phí kinh doanh xăng dầu thực tế đã được điều chỉnh từ kỳ điều hành 11/10, song theo các doanh nghiệp, vẫn có độ trễ. Theo họ, nếu nhà chức trách rà soát, điều chỉnh các chi phí này từ kỳ điều hành trong tháng 9, thuận lợi hơn nhiều do thời điểm này giá xuống thấp. Còn với kỳ điều hành 11/10, <a href="https://vnexpress.net/gia-xang-dau-ngay-mai-co-the-tang-tro-lai-4521151.html" rel="dofollow" xss=removed>giá xăng đã tăng trở lại</a> sau 3 kỳ giảm liên tiếp.</p><p class="Normal" xss=removed>PGS.TS Đinh Trọng Thịnh cũng cho rằng "đang có vấn đề" trong điều hành thị trường xăng dầu của liên Bộ. Theo ông, cơ chế giữa doanh nghiệp đầu mối - phân phối và bán lẻ chưa rõ ràng; nên chuyện "ép giá" xảy ra. Bộ Công Thương cũng chưa tính đúng, tính đủ nhu cầu và sản lượng tiêu thụ của từng địa phương.</p><p class="Normal" xss=removed>"Cần phải cụ thể từng tháng, từng quý để đảm bảo nhu cầu, không để thiếu đột xuất", ông nhìn nhận. Ngoài ra, quy định về kiểm tra, phân phối hạn mức nhập khẩu đã có, nhưng việc giám sát các đầu mối có nhập đúng, đủ theo đúng thời hạn quy định hay không, lại chưa chặt chẽ, khiến thực tế quý III vừa qua có tới 2/3 đầu mối không nhập khẩu, gây thiếu hụt nguồn hàng.</p><p class="Normal" xss=removed>Ở góc độ cơ quan quản lý giá xăng dầu, Bộ Tài chính chưa kịp thời cập nhật những thay đổi về chi phí trong cơ cấu giá bán, khiến doanh nghiệp thua lỗ.</p><p class="Normal" xss=removed>Tại phiên họp thứ 16 của Uỷ ban Thường vụ Quốc hội ngày 11/10, Ủy ban Kinh tế khi thẩm tra báo cáo kinh tế xã hội 2022, kế hoạch 2023 của Chính phủ cũng đề nghị phân tích rõ nguyên nhân trong điều hành giá xăng dầu. Việc này để rút ra bài học kinh nghiệm và có giải pháp ứng phó phù hợp, kịp thời khi giá xăng dầu thế giới có những diễn biến bất lợi trong tương lai.</p>', 'AWvaYDttM', NULL, '');

-- ----------------------------
-- Table structure for articlecomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecomment";
CREATE TABLE "public"."articlecomment" (
                                           "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                           "commentthreadid" varchar(40) COLLATE "pg_catalog"."default",
                                           "id" varchar(40) COLLATE "pg_catalog"."default",
                                           "author" varchar(255) COLLATE "pg_catalog"."default",
                                           "comment" text COLLATE "pg_catalog"."default",
                                           "time" timestamptz(6),
                                           "updatedat" timestamptz(6),
                                           "histories" jsonb[]
)
;

-- ----------------------------
-- Records of articlecomment
-- ----------------------------
INSERT INTO "public"."articlecomment" VALUES ('35vJP2Lnb', 'j3xlD3DIt', 'abw6F9-ap', 'uEyz9MqaM', 'test 3', '2022-11-08 06:03:04.285+00', NULL, NULL);
INSERT INTO "public"."articlecomment" VALUES ('rkKu76p-r', 'j3xlD3DIt', 'abw6F9-ap', 'uEyz9MqaM', 'test 4', '2022-11-08 06:03:19.611+00', NULL, NULL);
INSERT INTO "public"."articlecomment" VALUES ('luSQpIQlO', 'XstrMmbor', 'abw6F9-ap', 'uEyz9MqaM', 'game cho * choi a', '2022-11-09 10:01:30.371+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('fV3_2Jcnv', 'XstrMmbor', 'abw6F9-ap', 'uEyz9MqaM', 'best ending', '2022-11-09 10:13:10.788+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('patkthInN', '0v79DeRaC', 'abw6F9-ap', 'uEyz9MqaM', 'aaaa', '2022-11-10 04:04:48.333+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('r3Jyws4it', '0v79DeRaC', 'abw6F9-ap', 'uEyz9MqaM', 'soloko', '2022-11-10 06:45:20.124+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('5ao19HoT1', 'BwscWRPYB', 'abw6F9-ap', 'uEyz9MqaM', 'fine', '2023-03-27 06:57:22.833+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('D_j7MhdTU', 'Peo0sio7x', 'abw6F9-ap', 'uEyz9MqaM', '!@#', '2023-03-27 07:48:50.738+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('HKYriMyKE', 'BwscWRPYB', 'abw6F9-ap', 'uEyz9MqaM', 'water', '2023-03-28 07:43:17.364+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('4le5TenHE', 'BwscWRPYB', 'abw6F9-ap', 'uEyz9MqaM', 'loo', '2023-03-28 07:50:06.049+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('ArJsh0Y0t', 'CaP4JWfMW', 'abw6F9-ap', 'pu65Tr6FE', 'yo', '2023-04-03 03:17:13.629+00', NULL, '{}');
INSERT INTO "public"."articlecomment" VALUES ('CVxNU5xOe', '7qUfAFE_z', 'abw6F9-ap', 'pu65Tr6FE', 'hi', '2023-04-03 07:22:53.619+00', NULL, '{}');

-- ----------------------------
-- Table structure for articlecommentinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecommentinfo";
CREATE TABLE "public"."articlecommentinfo" (
                                               "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "replycount" int4 DEFAULT 0,
                                               "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of articlecommentinfo
-- ----------------------------
INSERT INTO "public"."articlecommentinfo" VALUES ('CVxNU5xOe', 0, 1);

-- ----------------------------
-- Table structure for articlecommentreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecommentreaction";
CREATE TABLE "public"."articlecommentreaction" (
                                                   "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                   "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                   "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                   "time" timestamptz(6),
                                                   "reaction" int2
)
;

-- ----------------------------
-- Records of articlecommentreaction
-- ----------------------------
INSERT INTO "public"."articlecommentreaction" VALUES ('CVxNU5xOe', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-03 07:22:55.016+00', 1);

-- ----------------------------
-- Table structure for articlecommentthread
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecommentthread";
CREATE TABLE "public"."articlecommentthread" (
                                                 "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "id" varchar(40) COLLATE "pg_catalog"."default",
                                                 "author" varchar(255) COLLATE "pg_catalog"."default",
                                                 "comment" text COLLATE "pg_catalog"."default",
                                                 "time" timestamptz(6),
                                                 "updatedat" timestamptz(6),
                                                 "histories" jsonb[]
)
;

-- ----------------------------
-- Records of articlecommentthread
-- ----------------------------
INSERT INTO "public"."articlecommentthread" VALUES ('7qUfAFE_z', 'abw6F9-ap', 'pu65Tr6FE', 'yup', '2023-04-03 07:22:28.309+00', NULL, '{}');

-- ----------------------------
-- Table structure for articlecommentthreadinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecommentthreadinfo";
CREATE TABLE "public"."articlecommentthreadinfo" (
                                                     "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                     "replycount" int4 DEFAULT 0,
                                                     "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of articlecommentthreadinfo
-- ----------------------------
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('0v79DeRaC', 2, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('UhZ1uBuNi', 0, 1);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('xHeq3KlUq', 0, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('XstrMmbor', 2, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('Peo0sio7x', 1, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('BwscWRPYB', 3, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('CaP4JWfMW', 1, 0);
INSERT INTO "public"."articlecommentthreadinfo" VALUES ('7qUfAFE_z', 1, 1);

-- ----------------------------
-- Table structure for articlecommentthreadreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlecommentthreadreaction";
CREATE TABLE "public"."articlecommentthreadreaction" (
                                                         "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "time" timestamptz(6),
                                                         "reaction" int2
)
;

-- ----------------------------
-- Records of articlecommentthreadreaction
-- ----------------------------
INSERT INTO "public"."articlecommentthreadreaction" VALUES ('7qUfAFE_z', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-03 07:22:45.504+00', 1);

-- ----------------------------
-- Table structure for articleinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."articleinfo";
CREATE TABLE "public"."articleinfo" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "rate" numeric DEFAULT 0,
                                        "rate1" int4 DEFAULT 0,
                                        "rate2" int4 DEFAULT 0,
                                        "rate3" int4 DEFAULT 0,
                                        "rate4" int4 DEFAULT 0,
                                        "rate5" int4 DEFAULT 0,
                                        "count" int4 DEFAULT 0,
                                        "score" numeric DEFAULT 0
)
;

-- ----------------------------
-- Records of articleinfo
-- ----------------------------
INSERT INTO "public"."articleinfo" VALUES ('abw6F9-ap', 3.2000000000000000, 0, 0, 4, 1, 0, 5, 16);

-- ----------------------------
-- Table structure for articlerate
-- ----------------------------
DROP TABLE IF EXISTS "public"."articlerate";
CREATE TABLE "public"."articlerate" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "rate" int4 NOT NULL,
                                        "time" timestamp(6),
                                        "review" text COLLATE "pg_catalog"."default",
                                        "usefulcount" int4 DEFAULT 0,
                                        "replycount" int4 DEFAULT 0,
                                        "histories" jsonb[],
                                        "anonymous" bool
)
;

-- ----------------------------
-- Records of articlerate
-- ----------------------------
INSERT INTO "public"."articlerate" VALUES ('abw6F9-ap', 'uEyz9MqaM', 3, '2023-03-27 16:37:42.861', 'a', 1, 2, '{"{\"rate\": 4, \"time\": \"2023-03-27T02:27:57.032Z\", \"review\": \"hi\"}","{\"rate\": 5, \"time\": \"2023-03-27T02:32:15.778Z\", \"review\": \"yolo\"}"}', NULL);

-- ----------------------------
-- Table structure for articleratecomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."articleratecomment";
CREATE TABLE "public"."articleratecomment" (
                                               "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "comment" text COLLATE "pg_catalog"."default",
                                               "time" timestamp(6),
                                               "updatedat" timestamp(6),
                                               "histories" jsonb[],
                                               "anonymous" bool
)
;

-- ----------------------------
-- Records of articleratecomment
-- ----------------------------
INSERT INTO "public"."articleratecomment" VALUES ('LPRa64I3p', 'abw6F9-ap', 'uEyz9MqaM', 'uEyz9MqaM', 'yooo', '2023-03-27 09:58:46.409', NULL, NULL, 't');
INSERT INTO "public"."articleratecomment" VALUES ('jf1hIVDHf', 'abw6F9-ap', 'uEyz9MqaM', 'uEyz9MqaM', 'yolo', '2023-03-27 11:01:08.198', NULL, NULL, 'f');

-- ----------------------------
-- Table structure for articleratereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."articleratereaction";
CREATE TABLE "public"."articleratereaction" (
                                                "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                "time" timestamp(6),
                                                "reaction" int2
)
;

-- ----------------------------
-- Records of articleratereaction
-- ----------------------------
INSERT INTO "public"."articleratereaction" VALUES ('abw6F9-ap', 'uEyz9MqaM', 'pu65Tr6FE', '2023-04-03 09:21:09.311', 1);

-- ----------------------------
-- Table structure for authencodes
-- ----------------------------
DROP TABLE IF EXISTS "public"."authencodes";
CREATE TABLE "public"."authencodes" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "code" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                        "expiredat" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of authencodes
-- ----------------------------

-- ----------------------------
-- Table structure for authentication
-- ----------------------------
DROP TABLE IF EXISTS "public"."authentication";
CREATE TABLE "public"."authentication" (
                                           "id" varchar COLLATE "pg_catalog"."default",
                                           "password" varchar COLLATE "pg_catalog"."default",
                                           "failcount" varchar COLLATE "pg_catalog"."default",
                                           "lockeduntiltime" varchar COLLATE "pg_catalog"."default",
                                           "successtime" varchar COLLATE "pg_catalog"."default",
                                           "failtime" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of authentication
-- ----------------------------

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS "public"."brand";
CREATE TABLE "public"."brand" (
    "brand" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO "public"."brand" VALUES ('Sony');
INSERT INTO "public"."brand" VALUES ('Samsung');
INSERT INTO "public"."brand" VALUES ('Canon');
INSERT INTO "public"."brand" VALUES ('Nikon');
INSERT INTO "public"."brand" VALUES ('Olypus');
INSERT INTO "public"."brand" VALUES ('Xiaomi');
INSERT INTO "public"."brand" VALUES ('Apple');
INSERT INTO "public"."brand" VALUES ('Disney');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category" (
                                     "categoryid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                     "categoryname" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                     "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                     "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                     "createdat" timestamp(6),
                                     "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                     "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO "public"."category" VALUES ('action', 'action', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('comedy', 'comedy', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('camera', 'camera', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('mobiphone', 'mobiphone', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('technological', 'technological', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('apple', 'apple', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."category" VALUES ('laptop', 'laptop', 'A', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS "public"."cinema";
CREATE TABLE "public"."cinema" (
                                   "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                   "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                   "address" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                   "parent" varchar(40) COLLATE "pg_catalog"."default",
                                   "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                   "latitude" numeric,
                                   "longitude" numeric,
                                   "imageurl" text COLLATE "pg_catalog"."default",
                                   "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                   "createdat" timestamp(6),
                                   "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                   "updatedat" timestamp(6),
                                   "gallery" jsonb[],
                                   "coverurl" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO "public"."cinema" VALUES ('CGV1', 'CGV Thu Duc', '216 Đ. Võ Văn Ngân, Bình Thọ, Thủ Đức, T', 'CGV', 'A', NULL, NULL, 'https:/storage.googleapis.com/go-firestore-rest-api.appspot.com/sub/PvYGRnrtp_pup.jpg', NULL, NULL, NULL, NULL, '{"{\"url\": \"https:/storage.googleapis.com/go-firestore-rest-api.appspot.com/sub/O6EC3CztM_dog3.jfif\", \"type\": \"image\"}","{\"url\": \"https:/storage.googleapis.com/go-firestore-rest-api.appspot.com/sub/trvCFk-tp_pup.jpg\", \"type\": \"image\"}"}', 'https:/storage.googleapis.com/go-firestore-rest-api.appspot.com/sub/hiF_Fk-tM_cover.jpg');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS "public"."company";
CREATE TABLE "public"."company" (
                                    "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                    "name" varchar(120) COLLATE "pg_catalog"."default",
                                    "description" varchar(1000) COLLATE "pg_catalog"."default",
                                    "address" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                    "size" int4,
                                    "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                    "establishedat" timestamptz(6),
                                    "categories" varchar[] COLLATE "pg_catalog"."default",
                                    "imageurl" varchar(300) COLLATE "pg_catalog"."default",
                                    "coverurl" varchar(300) COLLATE "pg_catalog"."default",
                                    "gallery" varchar[] COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO "public"."company" VALUES ('id4', 'Softwave company', 'This is description', ' Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh', 500, 'I', '2022-07-20 17:00:00+00', '{Categories1,Categories2}', 'https://maisonoffice.vn/wp-content/uploads/2021/09/toa-nha-hung-vuong-plaza.jpg', 'https://www.josephfiler.com/images/xl/Canada-Peggys-Cove-0406-Pano-Edit-Edit.jpg', NULL);
INSERT INTO "public"."company" VALUES ('id5', 'Softwave company', 'This is description', ' Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh', 500, 'I', '2022-07-20 17:00:00+00', '{Categories1,Categories2}', 'https://maisonoffice.vn/wp-content/uploads/2021/09/toa-nha-hung-vuong-plaza.jpg', 'https://www.josephfiler.com/images/xl/Canada-Peggys-Cove-0406-Pano-Edit-Edit.jpg', NULL);
INSERT INTO "public"."company" VALUES ('mb-bank', 'MBX Bank', 'This is description', 'Cau Giay, Ha Noi', 500, 'A', '2022-07-20 17:00:00+00', '{Categories1,Categories2}', 'https://maisonoffice.vn/wp-content/uploads/2021/09/toa-nha-hung-vuong-plaza.jpg', 'https://www.josephfiler.com/images/xl/Canada-Peggys-Cove-0406-Pano-Edit-Edit.jpg', NULL);
INSERT INTO "public"."company" VALUES ('onsky-vietnam', 'ONKY VIETNAM', 'This is description', ' Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh', 500, 'A', '2022-07-20 17:00:00+00', '{Categories1,Categories2}', 'https://maisonoffice.vn/wp-content/uploads/2021/09/toa-nha-hung-vuong-plaza.jpg', 'https://www.josephfiler.com/images/xl/Canada-Peggys-Cove-0406-Pano-Edit-Edit.jpg', NULL);
INSERT INTO "public"."company" VALUES ('nab', 'NAB X Centre Vietnam', 'This is description', ' Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh', 500, 'A', '2022-07-20 17:00:00+00', '{Categories1,Categories2}', 'https://maisonoffice.vn/wp-content/uploads/2021/09/toa-nha-hung-vuong-plaza.jpg', 'https://www.josephfiler.com/images/xl/Canada-Peggys-Cove-0406-Pano-Edit-Edit.jpg', NULL);

-- ----------------------------
-- Table structure for company_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."company_users";
CREATE TABLE "public"."company_users" (
                                          "company_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                          "user_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of company_users
-- ----------------------------
INSERT INTO "public"."company_users" VALUES ('odltd', 'h3-bIa9tp');
INSERT INTO "public"."company_users" VALUES ('odltd', 'mPOdF3rap');
INSERT INTO "public"."company_users" VALUES ('odltd', '1c7TAkSsA');
INSERT INTO "public"."company_users" VALUES ('id2', '1c7TAkSsA');

-- ----------------------------
-- Table structure for companycategory
-- ----------------------------
DROP TABLE IF EXISTS "public"."companycategory";
CREATE TABLE "public"."companycategory" (
                                            "categoryid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                            "categoryname" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                            "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                            "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                            "createdat" timestamp(6),
                                            "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                            "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of companycategory
-- ----------------------------
INSERT INTO "public"."companycategory" VALUES ('Entertainment', 'Entertainment', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."companycategory" VALUES ('Financial business', 'Financial business', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."companycategory" VALUES ('Industrial production', 'Industrial production', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."companycategory" VALUES ('Real estate business', 'Real estate business', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."companycategory" VALUES ('Business services', 'Business services', 'A', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for companycomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."companycomment";
CREATE TABLE "public"."companycomment" (
                                           "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                           "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                           "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                           "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                           "comment" text COLLATE "pg_catalog"."default",
                                           "time" timestamp(6),
                                           "updatedat" timestamp(6),
                                           "histories" jsonb[],
                                           "anonymous" bool
)
;

-- ----------------------------
-- Records of companycomment
-- ----------------------------

-- ----------------------------
-- Table structure for companyrate
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrate";
CREATE TABLE "public"."companyrate" (
                                        "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                        "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                        "rate" float8,
                                        "time" timestamp(6),
                                        "review" text COLLATE "pg_catalog"."default",
                                        "usefulcount" int4 DEFAULT 0,
                                        "replycount" int4 DEFAULT 0,
                                        "histories" jsonb[],
                                        "rates" float8[],
                                        "anonymous" bool
)
;

-- ----------------------------
-- Records of companyrate
-- ----------------------------
INSERT INTO "public"."companyrate" VALUES ('mb-bank', 'pu65Tr6FE', 4, '2023-05-12 13:40:29.215469', '', 0, 0, NULL, '{3,4,4,4,5}', 'f');

-- ----------------------------
-- Table structure for companyratefullinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyratefullinfo";
CREATE TABLE "public"."companyratefullinfo" (
                                                "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                "rate" numeric DEFAULT 0,
                                                "rate1" float8 DEFAULT 0,
                                                "rate2" float8 DEFAULT 0,
                                                "rate3" float8 DEFAULT 0,
                                                "rate4" float8 DEFAULT 0,
                                                "rate5" float8 DEFAULT 0,
                                                "count" numeric,
                                                "score" numeric
)
;

-- ----------------------------
-- Records of companyratefullinfo
-- ----------------------------
INSERT INTO "public"."companyratefullinfo" VALUES ('mb-bank', 4, 3, 4, 4, 4, 5, 1, 4);

-- ----------------------------
-- Table structure for companyrateinfo01
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrateinfo01";
CREATE TABLE "public"."companyrateinfo01" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "rate" numeric DEFAULT 0,
                                              "rate1" int4 DEFAULT 0,
                                              "rate2" int4 DEFAULT 0,
                                              "rate3" int4 DEFAULT 0,
                                              "rate4" int4 DEFAULT 0,
                                              "rate5" int4 DEFAULT 0,
                                              "count" int4,
                                              "score" numeric
)
;

-- ----------------------------
-- Records of companyrateinfo01
-- ----------------------------
INSERT INTO "public"."companyrateinfo01" VALUES ('mb-bank', 3, 0, 0, 1, 0, 0, 1, 3);

-- ----------------------------
-- Table structure for companyrateinfo02
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrateinfo02";
CREATE TABLE "public"."companyrateinfo02" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "rate" numeric DEFAULT 0,
                                              "rate1" int4 DEFAULT 0,
                                              "rate2" int4 DEFAULT 0,
                                              "rate3" int4 DEFAULT 0,
                                              "rate4" int4 DEFAULT 0,
                                              "rate5" int4 DEFAULT 0,
                                              "count" int4,
                                              "score" numeric
)
;

-- ----------------------------
-- Records of companyrateinfo02
-- ----------------------------
INSERT INTO "public"."companyrateinfo02" VALUES ('mb-bank', 4, 0, 0, 0, 1, 0, 1, 4);

-- ----------------------------
-- Table structure for companyrateinfo03
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrateinfo03";
CREATE TABLE "public"."companyrateinfo03" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "rate" numeric DEFAULT 0,
                                              "rate1" int4 DEFAULT 0,
                                              "rate2" int4 DEFAULT 0,
                                              "rate3" int4 DEFAULT 0,
                                              "rate4" int4 DEFAULT 0,
                                              "rate5" int4 DEFAULT 0,
                                              "count" int4,
                                              "score" numeric
)
;

-- ----------------------------
-- Records of companyrateinfo03
-- ----------------------------
INSERT INTO "public"."companyrateinfo03" VALUES ('mb-bank', 4, 0, 0, 0, 1, 0, 1, 4);

-- ----------------------------
-- Table structure for companyrateinfo04
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrateinfo04";
CREATE TABLE "public"."companyrateinfo04" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "rate" numeric DEFAULT 0,
                                              "rate1" int4 DEFAULT 0,
                                              "rate2" int4 DEFAULT 0,
                                              "rate3" int4 DEFAULT 0,
                                              "rate4" int4 DEFAULT 0,
                                              "rate5" int4 DEFAULT 0,
                                              "count" int4,
                                              "score" numeric
)
;

-- ----------------------------
-- Records of companyrateinfo04
-- ----------------------------
INSERT INTO "public"."companyrateinfo04" VALUES ('mb-bank', 4, 0, 0, 0, 1, 0, 1, 4);

-- ----------------------------
-- Table structure for companyrateinfo05
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyrateinfo05";
CREATE TABLE "public"."companyrateinfo05" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "rate" numeric DEFAULT 0,
                                              "rate1" int4 DEFAULT 0,
                                              "rate2" int4 DEFAULT 0,
                                              "rate3" int4 DEFAULT 0,
                                              "rate4" int4 DEFAULT 0,
                                              "rate5" int4 DEFAULT 0,
                                              "count" int4,
                                              "score" numeric
)
;

-- ----------------------------
-- Records of companyrateinfo05
-- ----------------------------
INSERT INTO "public"."companyrateinfo05" VALUES ('mb-bank', 5, 0, 0, 0, 0, 1, 1, 5);

-- ----------------------------
-- Table structure for companyratereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."companyratereaction";
CREATE TABLE "public"."companyratereaction" (
                                                "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                "time" timestamp(6),
                                                "reaction" int2
)
;

-- ----------------------------
-- Records of companyratereaction
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS "public"."countries";
CREATE TABLE "public"."countries" (
    "country" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO "public"."countries" VALUES ('Vietnam');
INSERT INTO "public"."countries" VALUES ('United State');
INSERT INTO "public"."countries" VALUES ('England');
INSERT INTO "public"."countries" VALUES ('Chinese');
INSERT INTO "public"."countries" VALUES ('Australia');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS "public"."film";
CREATE TABLE "public"."film" (
                                 "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                 "title" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                 "description" varchar(300) COLLATE "pg_catalog"."default",
                                 "imageurl" varchar(300) COLLATE "pg_catalog"."default",
                                 "trailerurl" varchar(300) COLLATE "pg_catalog"."default",
                                 "categories" varchar[] COLLATE "pg_catalog"."default",
                                 "directors" varchar[] COLLATE "pg_catalog"."default",
                                 "casts" varchar[] COLLATE "pg_catalog"."default",
                                 "productions" varchar[] COLLATE "pg_catalog"."default",
                                 "countries" varchar[] COLLATE "pg_catalog"."default",
                                 "language" varchar(300) COLLATE "pg_catalog"."default",
                                 "writer" varchar[] COLLATE "pg_catalog"."default",
                                 "gallery" jsonb[],
                                 "coverurl" varchar(300) COLLATE "pg_catalog"."default",
                                 "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                 "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                 "createdat" timestamp(6),
                                 "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                 "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO "public"."film" VALUES ('00001', 'The Shawshank Redemption', NULL, 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.imdb.com/video/vi3877612057?playlistId=tt0111161&ref_=tt_pr_ov_vi', '{drama}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00002', 'Thor: Love and Thunder', NULL, 'https://genk.mediacdn.vn/139269124445442048/2022/4/19/2-16503255592162067496114.jpg', 'https://www.youtube.com/watch?v=tgB1wUcmbbw', '{drama,crime}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00003', 'Top Gun: Maverick', NULL, 'https://www.cgv.vn/media/catalog/product/cache/3/image/c5f0a1eff4c394a251036189ccddaacd/t/o/top_gun_maverick_-_poster_28.03_1_.jpg', 'https://www.youtube.com/watch?v=yM389FbhlRQ', '{action,drama}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00004', 'The Batman', NULL, 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_batman-1.jpg', 'https://youtu.be/761uRaAoW00', '{action,crime,drama}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00005', 'The Sadness', NULL, 'https://phimnhua.com/wp-content/uploads/2022/04/phimnhua_1650248826.jpg', 'https://www.youtube.com/watch?v=axjme4v-xRo', '{horror}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00006', 'Doctor Strange in the Multiverse of Madness', NULL, 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg', 'https://www.imdb.com/video/vi3877612057?playlistId=tt0111161&ref_=tt_pr_ov_vi', '{action,adventure,fantasy}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00007', 'Fantastic Beasts: The Secrets of Dumbledore', NULL, 'https://i.bloganchoi.com/bloganchoi.com/wp-content/uploads/2022/04/review-phim-sinh-vat-huyen-bi-3-fantastic-beasts-3-2-696x1031.jpg?fit=700,20000&quality=95&ssl=1', 'https://youtu.be/Y9dr2zw-TXQ', '{family,adventure,fantasy}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00008', 'The Adam Project', NULL, 'http://photos.q00gle.com/storage/files/images-2021/images-movies/09/622b6789e7084.jpg', 'https://youtu.be/IE8HIsIrq4o', '{action,comedy,adventure}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00009', 'Spider-Man: No Way Home', NULL, 'https://gamek.mediacdn.vn/133514250583805952/2021/11/17/photo-1-1637118381839432740223.jpg', 'https://www.youtube.com/watch?v=OB3g37GTALc', '{action,adventure,fantasy}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."film" VALUES ('00010', 'Dune', NULL, 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/d/u/dune-poster-1.jpg', 'https://youtu.be/8g18jFHCLXk', '{action,adventure,drama}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for filmcasts
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmcasts";
CREATE TABLE "public"."filmcasts" (
    "actor" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of filmcasts
-- ----------------------------
INSERT INTO "public"."filmcasts" VALUES ('Will Smith');
INSERT INTO "public"."filmcasts" VALUES ('Leonardo DiCaprio');
INSERT INTO "public"."filmcasts" VALUES ('Tom Hanks');
INSERT INTO "public"."filmcasts" VALUES ('Samuel L. Jackson');
INSERT INTO "public"."filmcasts" VALUES ('Robert Downey Jr.');
INSERT INTO "public"."filmcasts" VALUES ('Johnny Deep');
INSERT INTO "public"."filmcasts" VALUES ('Benedict Cumberbatch');

-- ----------------------------
-- Table structure for filmcategory
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmcategory";
CREATE TABLE "public"."filmcategory" (
                                         "categoryid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "categoryname" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                         "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                         "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                         "createdat" timestamp(6),
                                         "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                         "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of filmcategory
-- ----------------------------
INSERT INTO "public"."filmcategory" VALUES ('adventure', 'adventure', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('animated', 'animated', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('comedy', 'comedy', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('drama', 'drama', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('horror', 'horror', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('crime', 'crime', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('fantasy', 'fantasy', 'A', NULL, NULL, NULL, NULL);
INSERT INTO "public"."filmcategory" VALUES ('family', 'family', 'A', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for filmcommentthread
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmcommentthread";
CREATE TABLE "public"."filmcommentthread" (
                                              "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "id" varchar(40) COLLATE "pg_catalog"."default",
                                              "author" varchar(255) COLLATE "pg_catalog"."default",
                                              "comment" text COLLATE "pg_catalog"."default",
                                              "time" timestamptz(6),
                                              "updatedat" timestamptz(6),
                                              "histories" jsonb[]
)
;

-- ----------------------------
-- Records of filmcommentthread
-- ----------------------------
INSERT INTO "public"."filmcommentthread" VALUES ('7_Pblhrzn', '00002', 'uEyz9MqaM', 'hi', '2023-03-29 07:07:55.007+00', NULL, '{}');
INSERT INTO "public"."filmcommentthread" VALUES ('zfVUyEgHR', '00002', 'pu65Tr6FE', 'hi', '2023-04-03 02:19:55.2+00', NULL, '{}');
INSERT INTO "public"."filmcommentthread" VALUES ('c0cWhmwdG', '00001', 'pu65Tr6FE', 'yo', '2023-04-03 06:50:22.819+00', NULL, '{}');
INSERT INTO "public"."filmcommentthread" VALUES ('F5jCAtR9_', '00001', 'pu65Tr6FE', 'a', '2023-04-07 02:41:51.653+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('r3agdZQcJ', '00001', 'pu65Tr6FE', 'b', '2023-04-07 02:41:54.213+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('6QPDwt6b5', '00001', 'pu65Tr6FE', 'c', '2023-04-07 02:41:56.864+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('YL93OqP_L', '00001', 'pu65Tr6FE', 'd', '2023-04-07 02:41:59.205+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('hSU_DwgzF', '00001', 'pu65Tr6FE', 'e', '2023-04-07 02:42:01.597+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('GLNCpyjmd', '00001', 'pu65Tr6FE', 'f', '2023-04-07 02:42:03.832+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('QUuNhgAv1', '00001', 'pu65Tr6FE', 'g', '2023-04-07 02:42:06.346+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('JredRTfaH', '00001', 'pu65Tr6FE', 'k', '2023-04-07 02:42:14.781+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('G9VuEdWyn', '00001', 'pu65Tr6FE', 'l', '2023-04-07 02:42:18.26+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('Ujfc98cda', '00001', 'pu65Tr6FE', 'm', '2023-04-07 02:42:21.33+00', NULL, NULL);
INSERT INTO "public"."filmcommentthread" VALUES ('dcj3Vb_Hs', '00001', 'pu65Tr6FE', 'hhhbaba', '2023-04-07 02:42:08.933+00', '2023-04-07 03:54:25.086+00', '{"{\"time\": \"2023-04-07T02:42:08.933Z\", \"comment\": \"h\"}","{\"time\": \"2023-04-07T02:42:08.933Z\", \"comment\": \"hhh\"}","{\"time\": \"2023-04-07T02:42:08.933Z\", \"comment\": \"hhh b\"}","{\"time\": \"2023-04-07T02:42:08.933Z\", \"comment\": \"hhh\"}","{\"time\": \"2023-04-07T02:42:08.933Z\", \"comment\": \"hhhba\"}"}');
INSERT INTO "public"."filmcommentthread" VALUES ('Y7EcAhUMf', '00001', 'pu65Tr6FE', 'klka', '2023-04-07 02:42:11.496+00', '2023-04-07 04:19:56.03+00', '{"{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"j\"}","{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"klk\"}","{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"klka\"}","{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"klkb\"}","{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"klka\"}","{\"time\": \"2023-04-07T02:42:11.496Z\", \"comment\": \"klkb\"}"}');
INSERT INTO "public"."filmcommentthread" VALUES ('Z2ENHmsM-', '00001', 'pu65Tr6FE', 'alo aboseyo', '2023-04-03 03:25:23.401+00', '2023-04-07 06:49:25.525+00', '{"{\"time\": \"2023-04-03T03:25:23.401Z\", \"comment\": \"alo\"}"}');
INSERT INTO "public"."filmcommentthread" VALUES ('4kL4o6eeO', '00001', 'pu65Tr6FE', 'Filling the Resignation letter form. Signature of your Project manager and yours are requested.
Please return all of TMA’s equipment and get signature of IT/Security Department at Item I
And get signature of your Project Manager at item III and at the end of this document (Checklist of Resignation)', '2023-04-07 08:45:47.118+00', NULL, NULL);

-- ----------------------------
-- Table structure for filmcommentthreadinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmcommentthreadinfo";
CREATE TABLE "public"."filmcommentthreadinfo" (
                                                  "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                  "replycount" int4 DEFAULT 0,
                                                  "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of filmcommentthreadinfo
-- ----------------------------
INSERT INTO "public"."filmcommentthreadinfo" VALUES ('r3agdZQcJ', 0, 0);
INSERT INTO "public"."filmcommentthreadinfo" VALUES ('F5jCAtR9_', 0, 1);
INSERT INTO "public"."filmcommentthreadinfo" VALUES ('4kL4o6eeO', 0, 0);
INSERT INTO "public"."filmcommentthreadinfo" VALUES ('c0cWhmwdG', 1, 1);

-- ----------------------------
-- Table structure for filmcommentthreadreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmcommentthreadreaction";
CREATE TABLE "public"."filmcommentthreadreaction" (
                                                      "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                      "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                      "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                      "time" timestamptz(6),
                                                      "reaction" int2
)
;

-- ----------------------------
-- Records of filmcommentthreadreaction
-- ----------------------------
INSERT INTO "public"."filmcommentthreadreaction" VALUES ('F5jCAtR9_', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-07 07:22:43.099+00', 1);
INSERT INTO "public"."filmcommentthreadreaction" VALUES ('c0cWhmwdG', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-07 07:45:13.396+00', 1);

-- ----------------------------
-- Table structure for filmdirectors
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmdirectors";
CREATE TABLE "public"."filmdirectors" (
    "director" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of filmdirectors
-- ----------------------------
INSERT INTO "public"."filmdirectors" VALUES ('Steven Spielberg');
INSERT INTO "public"."filmdirectors" VALUES ('Quentin Tarantino');
INSERT INTO "public"."filmdirectors" VALUES ('christopher Nolan');
INSERT INTO "public"."filmdirectors" VALUES ('Peter Jackson');
INSERT INTO "public"."filmdirectors" VALUES ('Martin Scorsese');

-- ----------------------------
-- Table structure for filmproductions
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmproductions";
CREATE TABLE "public"."filmproductions" (
    "production" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of filmproductions
-- ----------------------------
INSERT INTO "public"."filmproductions" VALUES ('Walt Disney Studios');
INSERT INTO "public"."filmproductions" VALUES ('Warner Bros.');
INSERT INTO "public"."filmproductions" VALUES ('Universal Pictures');
INSERT INTO "public"."filmproductions" VALUES ('Paramount Pictures');
INSERT INTO "public"."filmproductions" VALUES ('Lionsgate Films');

-- ----------------------------
-- Table structure for filmrate
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmrate";
CREATE TABLE "public"."filmrate" (
                                     "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                     "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                     "rate" int4,
                                     "time" timestamp(6),
                                     "review" text COLLATE "pg_catalog"."default",
                                     "usefulcount" int4 DEFAULT 0,
                                     "replycount" int4 DEFAULT 0,
                                     "histories" jsonb[],
                                     "anonymous" bool
)
;

-- ----------------------------
-- Records of filmrate
-- ----------------------------
INSERT INTO "public"."filmrate" VALUES ('00010', 'uEyz9MqaM', 6, NULL, '', 0, 0, NULL, 'f');
INSERT INTO "public"."filmrate" VALUES ('00001', 'uEyz9MqaM', 9, '2023-04-07 13:56:57.118', 'he', 1, 3, '{"{\"rate\": 4, \"time\": \"2023-03-20T03:19:11.113Z\", \"review\": \"Abc\"}","{\"rate\": 5, \"time\": \"2023-03-22T04:52:23.538Z\", \"review\": \"a\"}","{\"rate\": 4, \"time\": \"2023-04-04T04:37:46.812Z\", \"review\": \"a\"}","{\"rate\": 7, \"time\": \"2023-04-05T02:22:16.703Z\", \"review\": \"a\"}","{\"rate\": 5, \"time\": \"2023-04-05T07:16:50.336Z\", \"review\": \"a\"}"}', 'f');
INSERT INTO "public"."filmrate" VALUES ('00001', 'pu65Tr6FE', 10, NULL, '', 1, 1, '{"{\"rate\": 7, \"time\": \"2023-04-07T04:21:30.048Z\", \"review\": \"hellu\"}","{\"rate\": 2, \"time\": \"2023-04-07T04:33:32.394Z\", \"review\": \"bello\"}","{\"rate\": 9, \"time\": \"2023-04-07T04:37:51.359Z\", \"review\": \"oh no\"}","{\"rate\": 2, \"time\": \"2023-04-07T06:24:55.001Z\", \"review\": \"abc\"}","{\"rate\": 9, \"time\": \"2023-04-07T06:25:20.593Z\", \"review\": \"abc\"}","{\"rate\": 2, \"time\": \"2023-04-07T06:54:15.12Z\", \"review\": \"haha\"}","{\"rate\": 7, \"time\": \"2023-04-07T06:54:39.294Z\", \"review\": \"huhu\"}","{\"rate\": 4, \"time\": \"2023-04-07T15:47:37.515Z\", \"review\": \"Filling the Resignation letter form. Signature of your Project manager and yours are requested. Please return all of TMA’s equipment and get signature of IT/Security Department at Item I And get signature of your Project Manager at item III and at the end of this document (Checklist of Resignation)\"}","{\"rate\": 5}"}', 'f');
INSERT INTO "public"."filmrate" VALUES ('00002', 'uEyz9MqaM', 7, NULL, '', 1, 6, '{"{\"rate\": 8, \"time\": \"2023-03-29T14:05:15.874Z\", \"review\": \"poor\"}","{\"rate\": 7}","{\"rate\": 10}","{\"rate\": 6}"}', 'f');

-- ----------------------------
-- Table structure for filmratecomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmratecomment";
CREATE TABLE "public"."filmratecomment" (
                                            "commentid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                            "id" varchar(255) COLLATE "pg_catalog"."default",
                                            "author" varchar(255) COLLATE "pg_catalog"."default",
                                            "userid" varchar(255) COLLATE "pg_catalog"."default",
                                            "comment" text COLLATE "pg_catalog"."default",
                                            "time" timestamp(6),
                                            "updatedat" timestamp(6),
                                            "histories" jsonb[],
                                            "anonymous" bool
)
;

-- ----------------------------
-- Records of filmratecomment
-- ----------------------------
INSERT INTO "public"."filmratecomment" VALUES ('schiZMrme', '00002', 'uEyz9MqaM', 'pu65Tr6FE', 'g', '2023-04-03 10:05:33.564', NULL, NULL, 'f');
INSERT INTO "public"."filmratecomment" VALUES ('cuJA0_nJo', '00001', 'pu65Tr6FE', 'pu65Tr6FE', 'Filling the Resignation letter form. Signature of your Project manager and yours are requested. Please return all of TMA’s equipment and get signature of IT/Security Department at Item I And get signature of your Project Manager at item III and at the end of this document (Checklist of Resignation)', '2023-04-07 11:47:53.237', '2023-04-07 15:47:46.036', '{"{\"time\": \"2023-04-07T04:47:53.237Z\", \"comment\": \"yolo\"}"}', 'f');
INSERT INTO "public"."filmratecomment" VALUES ('NAzIzzLna', '00001', 'uEyz9MqaM', 'pu65Tr6FE', 'asd', '2023-04-10 15:07:32.926', NULL, NULL, 'f');
INSERT INTO "public"."filmratecomment" VALUES ('0SlhMKCp0', '00001', 'uEyz9MqaM', 'uEyz9MqaM', 'hihu', '2023-04-17 14:35:19.251', '2023-04-17 14:38:06.85', '{"{\"time\": \"2023-04-17T07:35:19.251Z\", \"comment\": \"hi\"}"}', 'f');
INSERT INTO "public"."filmratecomment" VALUES ('c69e2cec-3e0d-4411-be07-181c6889c140', '00001', 'uEyz9MqaM', 'pu65Tr6FE', 'dddd', '2023-05-12 16:31:45.770599', NULL, NULL, 'f');
INSERT INTO "public"."filmratecomment" VALUES ('348218c5-2c78-4b74-9e75-859016366d64', '00002', 'uEyz9MqaM', 'uEyz9MqaM', '3333333', '2023-05-12 17:38:49.862271', NULL, NULL, 't');
INSERT INTO "public"."filmratecomment" VALUES ('8fe2f615-d818-4ea6-b7da-aea892583018', '00002', 'uEyz9MqaM', 'uEyz9MqaM', 'hihviehive', '2023-05-12 17:39:51.466364', NULL, NULL, 'f');
INSERT INTO "public"."filmratecomment" VALUES ('c333aee9-f2e4-405f-9b83-8b84a275f2d8', '00002', 'uEyz9MqaM', 'uEyz9MqaM', 'hihihi', '2023-05-12 17:39:57.044337', NULL, NULL, 'f');
INSERT INTO "public"."filmratecomment" VALUES ('e32bac47-e985-4c2c-88de-a3a32371e5f2', '00002', 'uEyz9MqaM', 'uEyz9MqaM', 'quan', '2023-05-12 17:40:20.190369', NULL, NULL, 't');
INSERT INTO "public"."filmratecomment" VALUES ('4cd628f9-2dcf-46fc-a172-66fdff2837dc', '00002', 'uEyz9MqaM', 'uEyz9MqaM', 'ddd', '2023-05-12 17:40:25.432491', NULL, NULL, 'f');

-- ----------------------------
-- Table structure for filmrateinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmrateinfo";
CREATE TABLE "public"."filmrateinfo" (
                                         "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                         "rate" numeric DEFAULT 0,
                                         "rate1" int4 DEFAULT 0,
                                         "rate2" int4 DEFAULT 0,
                                         "rate3" int4 DEFAULT 0,
                                         "rate4" int4 DEFAULT 0,
                                         "rate5" int4 DEFAULT 0,
                                         "rate6" int4 DEFAULT 0,
                                         "rate7" int4 DEFAULT 0,
                                         "rate8" int4 DEFAULT 0,
                                         "rate9" int4 DEFAULT 0,
                                         "rate10" int4 DEFAULT 0,
                                         "count" int4,
                                         "score" numeric
)
;

-- ----------------------------
-- Records of filmrateinfo
-- ----------------------------
INSERT INTO "public"."filmrateinfo" VALUES ('00001', 9.5000000000000000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 19);
INSERT INTO "public"."filmrateinfo" VALUES ('00002', 7.0000000000000000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 7);
INSERT INTO "public"."filmrateinfo" VALUES ('00010', 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 6);

-- ----------------------------
-- Table structure for filmratereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmratereaction";
CREATE TABLE "public"."filmratereaction" (
                                             "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "time" timestamp(6),
                                             "reaction" int2
)
;

-- ----------------------------
-- Records of filmratereaction
-- ----------------------------
INSERT INTO "public"."filmratereaction" VALUES ('00001', 'uEyz9MqaM', 'uEyz9MqaM', '2023-05-09 10:57:04.766763', 1);
INSERT INTO "public"."filmratereaction" VALUES ('00001', 'pu65Tr6FE', 'uEyz9MqaM', '2023-05-09 10:57:07.771421', 1);
INSERT INTO "public"."filmratereaction" VALUES ('00002', 'uEyz9MqaM', 'uEyz9MqaM', '2023-05-12 18:07:30.524149', 1);

-- ----------------------------
-- Table structure for filmreplycomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmreplycomment";
CREATE TABLE "public"."filmreplycomment" (
                                             "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                             "commentthreadid" varchar(40) COLLATE "pg_catalog"."default",
                                             "id" varchar(40) COLLATE "pg_catalog"."default",
                                             "author" varchar(255) COLLATE "pg_catalog"."default",
                                             "comment" text COLLATE "pg_catalog"."default",
                                             "time" timestamptz(6),
                                             "updatedat" timestamptz(6),
                                             "histories" jsonb[]
)
;

-- ----------------------------
-- Records of filmreplycomment
-- ----------------------------
INSERT INTO "public"."filmreplycomment" VALUES ('XFFVX-ZjP', 'c0cWhmwdG', '00001', 'pu65Tr6FE', 'oh hell', '2023-04-07 07:03:24.287+00', NULL, '{"{\"time\": \"2023-04-07T07:03:24.287Z\", \"comment\": \"oh hello\"}"}');
INSERT INTO "public"."filmreplycomment" VALUES ('YUHwsZIap', 'c0cWhmwdG', '00001', 'pu65Tr6FE', 'test', '2023-05-12 10:37:23.097525+00', NULL, '{}');

-- ----------------------------
-- Table structure for filmreplycommentinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmreplycommentinfo";
CREATE TABLE "public"."filmreplycommentinfo" (
                                                 "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "replycount" int4 DEFAULT 0,
                                                 "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of filmreplycommentinfo
-- ----------------------------
INSERT INTO "public"."filmreplycommentinfo" VALUES ('wv5cx_a-e', 0, 2);
INSERT INTO "public"."filmreplycommentinfo" VALUES ('XFFVX-ZjP', 0, 1);

-- ----------------------------
-- Table structure for filmreplycommentreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."filmreplycommentreaction";
CREATE TABLE "public"."filmreplycommentreaction" (
                                                     "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                     "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                     "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                     "time" timestamptz(6),
                                                     "reaction" int2
)
;

-- ----------------------------
-- Records of filmreplycommentreaction
-- ----------------------------
INSERT INTO "public"."filmreplycommentreaction" VALUES ('wv5cx_a-e', 'uEyz9MqaM', 'uEyz9MqaM', '2023-04-07 07:02:51.738+00', 1);
INSERT INTO "public"."filmreplycommentreaction" VALUES ('wv5cx_a-e', 'uEyz9MqaM', 'pu65Tr6FE', '2023-04-07 07:09:51.168+00', 1);
INSERT INTO "public"."filmreplycommentreaction" VALUES ('XFFVX-ZjP', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-07 07:45:07.274+00', 1);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS "public"."history";
CREATE TABLE "public"."history" (
                                    "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                    "history" varchar[] COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO "public"."history" VALUES ('mPOdF3rap', '{$2a$10$RYOJbtG1crorHlvkRpjcO.Cf21BWnEQXisdGtqKt2NDj0bRovv0/C,$2a$10$44Gh5T5QctnkK/XaGrKLeenuaLgUS40vxyPWahdbBWjsINEyisFFi,$2a$10$pW/zKZCs0qkNOmTiFDj8x.KOUrZkO8DsI0.eTRbhNd.qF3PtqLMtm,$2a$10$eHNlUsZMFMpHxefurOOLmuoChl65N0AkhrjKJh7yxEU0jCElhbxwi,$2a$10$x60m11QjQHYheZn3raWLg.2EPlaJsmljnT4GVlfNN8Wj0lTEPCHBa}');

-- ----------------------------
-- Table structure for integrationconfiguration
-- ----------------------------
DROP TABLE IF EXISTS "public"."integrationconfiguration";
CREATE TABLE "public"."integrationconfiguration" (
                                                     "id" varchar COLLATE "pg_catalog"."default",
                                                     "link" varchar COLLATE "pg_catalog"."default",
                                                     "cliendid" varchar COLLATE "pg_catalog"."default",
                                                     "scope" varchar COLLATE "pg_catalog"."default",
                                                     "redirecturi" varchar COLLATE "pg_catalog"."default",
                                                     "accesstokenlink" varchar COLLATE "pg_catalog"."default",
                                                     "clientsecret" varchar COLLATE "pg_catalog"."default",
                                                     "status" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of integrationconfiguration
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS "public"."item";
CREATE TABLE "public"."item" (
                                 "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                 "title" varchar(120) COLLATE "pg_catalog"."default",
                                 "author" varchar(140) COLLATE "pg_catalog"."default",
                                 "status" varchar(1) COLLATE "pg_catalog"."default",
                                 "description" varchar(1500) COLLATE "pg_catalog"."default",
                                 "price" numeric,
                                 "imageurl" varchar(300) COLLATE "pg_catalog"."default",
                                 "brand" varchar(120) COLLATE "pg_catalog"."default",
                                 "publishedat" timestamp(6),
                                 "expiredat" timestamp(6),
                                 "category" varchar[] COLLATE "pg_catalog"."default",
                                 "gallery" jsonb[],
                                 "condition" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO "public"."item" VALUES ('04', 'Movie tickets', 'pu65Tr6FE', 'A', 'Minion mooive ticket', 100000, 'https://i.pinimg.com/originals/2d/ac/e7/2dace73219e9f26ffb39b3bfbb98c41b.jpg', 'Disney', '2022-07-19 00:00:00', '2023-04-12 00:00:00', '{comedy,action}', '{"{\"url\": \"https://i.pinimg.com/originals/2d/ac/e7/2dace73219e9f26ffb39b3bfbb98c41b.jpg\", \"type\": \"image\", \"source\": \"\"}"}', NULL);
INSERT INTO "public"."item" VALUES ('01', 'Movie tickets', 'pu65Tr6FE', 'A', 'Thor movie ticket', 100000, 'https://i.etsystatic.com/31051854/r/il/951542/3882447990/il_570xN.3882447990_8so4.jpg', 'Disney', '2022-07-19 00:00:00', '2023-04-25 00:00:00', '{comedy,action}', '{"{\"url\": \"https://i.etsystatic.com/31051854/r/il/951542/3882447990/il_570xN.3882447990_8so4.jpg\", \"type\": \"image\", \"source\": \"\"}"}', NULL);
INSERT INTO "public"."item" VALUES ('02', 'Iphone 13', 'pu65Tr6FE', 'A', 'Iphone 13 from Apple', 20000000, 'https://lebaostore.com/wp-content/uploads/2022/02/iphone-13-pro-family-hero.png', 'Apple', '2022-07-19 00:00:00', '2023-04-17 00:00:00', '{mobiphone,technological,apple}', '{"{\"url\": \"https://lebaostore.com/wp-content/uploads/2022/02/iphone-13-pro-family-hero.png\", \"type\": \"image\", \"source\": \"\"}"}', NULL);
INSERT INTO "public"."item" VALUES ('05', 'Macbook', 'pu65Tr6FE', 'A', 'Macbook from Apple', 25000000, 'https://www.maccenter.vn/App_images/MacBookPro-14-SpaceGray.jpg', 'Apple', '2022-07-19 00:00:00', '2023-04-20 00:00:00', '{laptop,technological,apple}', '{"{\"url\": \"https://www.maccenter.vn/App_images/MacBookPro-14-SpaceGray.jpg\", \"type\": \"image\", \"source\": \"\"}"}', NULL);
INSERT INTO "public"."item" VALUES ('03', 'Camera', 'pu65Tr6FE', 'A', 'Camera from Samsung', 100000000, 'https://acmartbd.com/wp-content/uploads/2015/03/Samsung-wb1100f.jpg', 'Samsung', '2022-07-19 00:00:00', '2023-04-12 00:00:00', '{camera,technological}', '{"{\"url\": \"https://acmartbd.com/wp-content/uploads/2015/03/Samsung-wb1100f.jpg\", \"type\": \"image\", \"source\": \"\"}"}', NULL);

-- ----------------------------
-- Table structure for itemcategory
-- ----------------------------
DROP TABLE IF EXISTS "public"."itemcategory";
CREATE TABLE "public"."itemcategory" (
                                         "categoryid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "categoryname" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                         "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                         "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                         "createdat" timestamp(6),
                                         "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                         "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of itemcategory
-- ----------------------------

-- ----------------------------
-- Table structure for itemcomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."itemcomment";
CREATE TABLE "public"."itemcomment" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "comment" text COLLATE "pg_catalog"."default",
                                        "time" timestamp(6),
                                        "updatedat" timestamp(6),
                                        "histories" jsonb[]
)
;

-- ----------------------------
-- Records of itemcomment
-- ----------------------------
INSERT INTO "public"."itemcomment" VALUES ('01', '02', '77c35c38c3554ea6906730dbcfeca0f2', 'Good', '2022-07-22 00:00:00', NULL, NULL);
INSERT INTO "public"."itemcomment" VALUES ('02', '06', '77c35c38c3554ea6906730dbcfeca0f2', 'Not Bad', '2022-07-22 00:00:00', NULL, NULL);
INSERT INTO "public"."itemcomment" VALUES ('03', '05', '77c35c38c3554ea6906730dbcfeca0f2', 'abc', '2022-07-22 00:00:00', NULL, NULL);
INSERT INTO "public"."itemcomment" VALUES ('04', '07', '77c35c38c3554ea6906730dbcfeca0f2', 'Bad', '2022-07-22 00:00:00', NULL, NULL);
INSERT INTO "public"."itemcomment" VALUES ('05', '11', '77c35c38c3554ea6906730dbcfeca0f2', '123', '2022-07-22 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for iteminfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."iteminfo";
CREATE TABLE "public"."iteminfo" (
                                     "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                     "viewcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of iteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for itemresponse
-- ----------------------------
DROP TABLE IF EXISTS "public"."itemresponse";
CREATE TABLE "public"."itemresponse" (
                                         "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "description" text COLLATE "pg_catalog"."default",
                                         "time" timestamp(6),
                                         "usefulcount" int4 DEFAULT 0,
                                         "replycount" int4 DEFAULT 0,
                                         "histories" jsonb[],
                                         "price" int8
)
;

-- ----------------------------
-- Records of itemresponse
-- ----------------------------
INSERT INTO "public"."itemresponse" VALUES ('01', '77c35c38c3554ea6906730dbcfeca0f2', 'Good', '2022-07-22 00:00:00', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('02', '77c35c38c3554ea6906730dbcfeca0f2', 'Not Bad', '2022-07-22 00:00:00', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('03', '77c35c38c3554ea6906730dbcfeca0f2', 'Wow', '2022-07-22 00:00:00', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('04', '77c35c38c3554ea6906730dbcfeca0f2', 'Bad', '2022-07-22 00:00:00', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('05', '77c35c38c3554ea6906730dbcfeca0f2', 'I hate this', '2022-07-22 00:00:00', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('01', 'pu65Tr6FE', 'as', '2023-04-10 17:03:47.866', 0, 0, NULL, 0);
INSERT INTO "public"."itemresponse" VALUES ('03', 'pu65Tr6FE', 'abc', '2023-04-11 17:33:09.319', 0, 0, NULL, 0);

-- ----------------------------
-- Table structure for itemresponsereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."itemresponsereaction";
CREATE TABLE "public"."itemresponsereaction" (
                                                 "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "time" timestamp(6),
                                                 "reaction" int2
)
;

-- ----------------------------
-- Records of itemresponsereaction
-- ----------------------------

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS "public"."job";
CREATE TABLE "public"."job" (
                                "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                "title" varchar(300) COLLATE "pg_catalog"."default",
                                "description" varchar(1000) COLLATE "pg_catalog"."default",
                                "skill" jsonb[],
                                "publishedat" timestamptz(6),
                                "expiredat" timestamptz(6),
                                "quantity" int8 DEFAULT 0,
                                "applicantcount" int8 DEFAULT 0,
                                "requirements" varchar(255) COLLATE "pg_catalog"."default",
                                "benefit" varchar(255) COLLATE "pg_catalog"."default",
                                "company_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO "public"."job" VALUES ('aaa', 'aaa', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'odltd');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS "public"."location";
CREATE TABLE "public"."location" (
                                     "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                     "name" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                     "type" varchar(40) COLLATE "pg_catalog"."default",
                                     "description" varchar(1000) COLLATE "pg_catalog"."default",
                                     "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
                                     "geo" jsonb,
                                     "latitude" numeric(20,16),
                                     "longitude" numeric(20,16),
                                     "imageurl" varchar(1500) COLLATE "pg_catalog"."default",
                                     "customurl" varchar(1500) COLLATE "pg_catalog"."default",
                                     "createdby" varchar(1500) COLLATE "pg_catalog"."default",
                                     "createdat" timestamp(6),
                                     "updatedby" varchar(1500) COLLATE "pg_catalog"."default",
                                     "version" int4,
                                     "info" jsonb
)
;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO "public"."location" VALUES ('5d1d7a66c5e4f320a86ca6b2', 'Highland Coffee', 'coffee', 'Highland Coffee', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/image/5d1d7a66c5e4f320a86ca6b2_IFc9Db9DT_c.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d1d7a85c5e4f320a86ca6b3', 'Starbucks Coffee', 'coffee', 'Starbucks Coffee', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://ichef.bbci.co.uk/news/976/cpsprodpb/17185/production/_118879549_gettyimages-1308703596.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d1d7b79c5e4f320a86ca6b4', 'King Coffee', 'coffee', 'King Coffee', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://www.asia-bars.com/wp-content/uploads/2015/11/cong-caphe-1.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d1efb3796988a127077547c', 'Sumo BBQ Restaurant', 'restaurant', 'farthest', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://aeonmall-binhduongcanary.com.vn/wp-content/uploads/2018/12/IMG-2041-min-e1558279440850.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d562ad357568217d0d9a2d5', 'CGV', 'cinema', 'CGV cinema', 'A', NULL, 10.7826048776525080, 10.8548611610901300, 'https://rapchieuphim.com/photos/9/rap-cgv-su-van-hanh/rap-CGV-Su-van-hanh-8__2_.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d146cbffbdf2b1d30742262', 'Highland Coffee', 'coffee', 'Highland Coffee', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://i.ndh.vn/2022/07/29/1600834272dautuvietnamsuchunglaicuahighlandscoffeelabandapchotheluckhac-1659080446.jpg', 'https://i.ndh.vn/2022/07/29/1600834272dautuvietnamsuchunglaicuahighlandscoffeelabandapchotheluckhac-1659080446.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."location" VALUES ('5d1d7a18c5e4f320a86ca6b1', 'Trung Nguyen Coffee', 'coffee', 'Trung Nguyen Coffee', 'A', NULL, 10.7826048776525080, 106.7009147396518000, 'https://cdn2.shopify.com/s/files/1/0065/6759/1999/files/dia-chi-trung-nguyen-legend-cafe-tai-vincom-ha-nam_grande.jpg', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/5d146cbffbdf2b1d30742262_TL4wqjvnz_4K-Art-Wallpapers.jpg', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for locationcomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationcomment";
CREATE TABLE "public"."locationcomment" (
                                            "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                            "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                            "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                            "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                            "comment" text COLLATE "pg_catalog"."default",
                                            "time" timestamp(6),
                                            "updatedat" timestamp(6),
                                            "histories" jsonb[],
                                            "anonymous" bool
)
;

-- ----------------------------
-- Records of locationcomment
-- ----------------------------
INSERT INTO "public"."locationcomment" VALUES ('CPh9yOO8H', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'hi', '2023-03-23 15:44:25.356', NULL, NULL, 't');
INSERT INTO "public"."locationcomment" VALUES ('cQ6hNws3v', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'yolo', '2023-03-23 15:45:32.621', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('MAk1BOOPB', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'hi', '2023-03-23 16:51:46.922', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('EzRxHlOBC', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'oh yeah', '2023-03-23 16:57:01.95', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('EDepjfUZz', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'yolo', '2023-03-23 16:58:28.567', NULL, NULL, 't');
INSERT INTO "public"."locationcomment" VALUES ('29feI2KC9', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'yup', '2023-03-27 10:46:09.769', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('XhtnFuz_0', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'yolo', '2023-03-27 10:47:04.826', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('9ukzkr43b', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'hi', '2023-03-27 10:47:29.937', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('nmlfmxPl0', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'hi', '2023-03-27 10:47:29.937', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('VwP1pBM40', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'uEyz9MqaM', 'yo', '2023-03-27 10:52:48.336', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('e-nmtaraD', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'pu65Tr6FE', 'hi', '2023-03-30 13:40:15.87', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('JxoG2Ct8n', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uEyz9MqaM', 'a', '2023-04-04 13:18:16.839', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('n_C2clD6g', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'uEyz9MqaM', 'yeah', '2023-04-04 13:20:19.586', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('piwKVqajD', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uEyz9MqaM', 'b', '2023-04-04 14:03:22.18', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('d1mLikn2k', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uEyz9MqaM', 'a', '2023-04-04 16:13:02.472', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('Q6bBIl8Zc', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uEyz9MqaM', 'b', '2023-04-04 16:13:06.534', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('hI_v0wrjo', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'pu65Tr6FE', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', '2023-04-06 10:28:46.38', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('g1Of56Z9C', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'pu65Tr6FE', 'hi', '2023-04-06 10:45:18.101', NULL, NULL, 't');
INSERT INTO "public"."locationcomment" VALUES ('3BCGcCgC8', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'pu65Tr6FE', 'b', '2023-04-06 13:40:42.394', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('Hiq0RQPEt', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'pu65Tr6FE', 'abc', '2023-04-14 10:34:41.991', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('4vvjkCiTv', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'uEyz9MqaM', 'helu', '2023-04-14 10:35:16.755', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('QyY3vL_AT', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'pu65Tr6FE', 'bloavla', '2023-04-14 11:01:07.313', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('B2AnGZ2Co', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'uEyz9MqaM', 'yoo', '2023-04-14 11:02:19.625', NULL, NULL, 'f');
INSERT INTO "public"."locationcomment" VALUES ('ELH_IQyqf', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'pu65Tr6FE', 'eeeee', '2023-04-06 11:00:48.4', '2023-04-17 11:08:58.801', '{"{\"time\": \"2023-04-06T04:00:48.400Z\", \"comment\": \"e\"}"}', 'f');
INSERT INTO "public"."locationcomment" VALUES ('B3ctw27P5', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'uEyz9MqaM', 'huhu', '2023-04-18 17:16:26.522', NULL, NULL, 't');

-- ----------------------------
-- Table structure for locationcommentthread
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationcommentthread";
CREATE TABLE "public"."locationcommentthread" (
                                                  "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                  "id" varchar(40) COLLATE "pg_catalog"."default",
                                                  "author" varchar(255) COLLATE "pg_catalog"."default",
                                                  "comment" text COLLATE "pg_catalog"."default",
                                                  "time" timestamptz(6),
                                                  "updatedat" timestamptz(6),
                                                  "histories" jsonb[]
)
;

-- ----------------------------
-- Records of locationcommentthread
-- ----------------------------
INSERT INTO "public"."locationcommentthread" VALUES ('4QkTPXfLt', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'hi', '2023-04-03 07:57:04.638+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('SMmXVksrQ', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'a', '2023-04-04 02:28:36.938+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('xGsBHvAhI', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'b', '2023-04-04 02:28:40.291+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('ks-txtHW5', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'c', '2023-04-04 02:28:41.934+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('gQsRtAsY8', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'd', '2023-04-04 02:28:43.621+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('u7rf0YUD4', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'b', '2023-04-06 06:46:03.804+00', NULL, '{}');
INSERT INTO "public"."locationcommentthread" VALUES ('M369VOqsD', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'test', '2023-04-06 06:47:50.358+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('jQ-d1LjB2', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'a', '2023-04-06 08:15:46.102+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('fQ8ZGjZV0', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'a', '2023-04-06 08:16:00.971+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('FBFtrF7a3', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'b', '2023-04-06 08:16:03.984+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('2wA097XQl', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'aa', '2023-04-06 08:16:06.02+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('8R2era603', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'dd', '2023-04-06 08:16:10.003+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('lCM2iMFwk', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'qw', '2023-04-06 08:16:12.484+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('wzBnAmMZ5', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'qwe', '2023-04-10 04:15:20.215+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('NM8JHf5w6', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'rty', '2023-04-10 04:15:22.159+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('UoPwSaRJU', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uio', '2023-04-10 04:15:23.957+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('VtZUjfyPh', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'm,.', '2023-04-10 04:15:26.991+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('xVJy8Uj9g', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'zxc', '2023-04-10 04:15:28.807+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('YOBTuks1e', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'asd', '2023-04-10 04:15:30.44+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('JihXTDUrN', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'kyu', '2023-04-10 04:15:32.723+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('u0mYlY4LG', '5d562ad357568217d0d9a2d5', 'pu65Tr6FE', 'hi', '2023-04-11 09:25:07.016+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('ig_UEXS5b', '5d562ad357568217d0d9a2d5', 'pu65Tr6FE', 'no', '2023-04-11 09:29:45.674+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('ywurd_OaC', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'yehoo', '2023-04-04 06:24:41.486+00', '2023-04-13 04:49:59.501+00', '{"{\"time\": \"2023-04-04T06:24:41.486Z\", \"comment\": \"abc\"}","{\"time\": \"2023-04-04T06:24:41.486Z\", \"comment\": \"abcxyz\"}","{\"time\": \"2023-04-04T06:24:41.486Z\", \"comment\": \"yoo\"}"}');
INSERT INTO "public"."locationcommentthread" VALUES ('HHjGtC1_G', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'hulu', '2023-04-18 06:08:06.191+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('I3og5ZaHC', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'hule', '2023-04-18 07:41:17.17+00', NULL, NULL);
INSERT INTO "public"."locationcommentthread" VALUES ('WvbZM_GYu', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'abc', '2023-04-06 06:45:37.87+00', '2023-04-19 03:26:16.644+00', '{"{\"time\": \"2023-04-06T06:45:37.870Z\", \"comment\": \"a\"}"}');

-- ----------------------------
-- Table structure for locationcommentthreadinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationcommentthreadinfo";
CREATE TABLE "public"."locationcommentthreadinfo" (
                                                      "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                      "replycount" int4 DEFAULT 0,
                                                      "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of locationcommentthreadinfo
-- ----------------------------
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('5d1d7a66c5e4f320a86ca6b2', 0, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('4QkTPXfLt', 4, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('WvbZM_GYu', 2, 0);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('ywurd_OaC', 3, 2);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('HHjGtC1_G', 0, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('u7rf0YUD4', 1, 0);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('wzBnAmMZ5', 1, 0);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('8R2era603', 3, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('2wA097XQl', 3, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('lCM2iMFwk', 3, 1);
INSERT INTO "public"."locationcommentthreadinfo" VALUES ('M369VOqsD', 0, 0);

-- ----------------------------
-- Table structure for locationcommentthreadreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationcommentthreadreaction";
CREATE TABLE "public"."locationcommentthreadreaction" (
                                                          "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                          "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                          "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                          "time" timestamptz(6),
                                                          "reaction" int2
)
;

-- ----------------------------
-- Records of locationcommentthreadreaction
-- ----------------------------
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('4QkTPXfLt', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-03 07:57:05.913+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'uEyz9MqaM', '2023-04-04 07:35:43.616+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('8R2era603', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-10 08:18:43.034+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('2wA097XQl', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-10 08:18:46.097+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('ywurd_OaC', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-14 03:30:07.499+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('lCM2iMFwk', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-14 04:05:36.41+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('ywurd_OaC', 'pu65Tr6FE', 'uEyz9MqaM', '2023-04-19 08:57:30.763+00', 1);
INSERT INTO "public"."locationcommentthreadreaction" VALUES ('HHjGtC1_G', 'uEyz9MqaM', 'uEyz9MqaM', '2023-04-19 08:57:42.348+00', 1);

-- ----------------------------
-- Table structure for locationfollower
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationfollower";
CREATE TABLE "public"."locationfollower" (
                                             "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                             "follower" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of locationfollower
-- ----------------------------
INSERT INTO "public"."locationfollower" VALUES ('5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE');

-- ----------------------------
-- Table structure for locationfollowing
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationfollowing";
CREATE TABLE "public"."locationfollowing" (
                                              "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                              "following" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of locationfollowing
-- ----------------------------
INSERT INTO "public"."locationfollowing" VALUES ('pu65Tr6FE', '5d1d7a66c5e4f320a86ca6b2');

-- ----------------------------
-- Table structure for locationinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationinfo";
CREATE TABLE "public"."locationinfo" (
                                         "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "rate" float8 DEFAULT 0,
                                         "rate1" int4 DEFAULT 0,
                                         "rate2" int4 DEFAULT 0,
                                         "rate3" int4 DEFAULT 0,
                                         "rate4" int4 DEFAULT 0,
                                         "rate5" int4 DEFAULT 0,
                                         "count" int4 DEFAULT 0,
                                         "score" numeric DEFAULT 0
)
;

-- ----------------------------
-- Records of locationinfo
-- ----------------------------
INSERT INTO "public"."locationinfo" VALUES ('5d1d7a66c5e4f320a86ca6b2', 4, 0, 0, 0, 1, 0, 1, 4);
INSERT INTO "public"."locationinfo" VALUES ('5d562ad357568217d0d9a2d5', 4, 0, 0, 0, 1, 0, 1, 4);
INSERT INTO "public"."locationinfo" VALUES ('00001', 4, 0, 0, 0, 1, 0, 1, 4);
INSERT INTO "public"."locationinfo" VALUES ('00002', 5, 0, 0, 0, 0, 1, 1, 5);
INSERT INTO "public"."locationinfo" VALUES ('5d1efb3796988a127077547c', 3, 0, 0, 1, 0, 0, 1, 3);

-- ----------------------------
-- Table structure for locationinfomation
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationinfomation";
CREATE TABLE "public"."locationinfomation" (
                                               "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                               "followercount" int8,
                                               "followingcount" int8
)
;

-- ----------------------------
-- Records of locationinfomation
-- ----------------------------

-- ----------------------------
-- Table structure for locationrate
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationrate";
CREATE TABLE "public"."locationrate" (
                                         "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "rate" float4 NOT NULL,
                                         "time" timestamp(6),
                                         "review" text COLLATE "pg_catalog"."default",
                                         "usefulcount" int4 DEFAULT 0,
                                         "replycount" int4 DEFAULT 0,
                                         "anonymous" bool,
                                         "histories" jsonb[]
)
;

-- ----------------------------
-- Records of locationrate
-- ----------------------------
INSERT INTO "public"."locationrate" VALUES ('5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 4, NULL, '', 0, 0, 't', NULL);
INSERT INTO "public"."locationrate" VALUES ('5d562ad357568217d0d9a2d5', 'uEyz9MqaM', 4, NULL, '', 0, 0, 't', NULL);
INSERT INTO "public"."locationrate" VALUES ('00002', 'uEyz9MqaM', 5, NULL, '', 0, 0, 't', NULL);
INSERT INTO "public"."locationrate" VALUES ('5d1efb3796988a127077547c', 'uEyz9MqaM', 3, NULL, '', 0, 0, 't', NULL);
INSERT INTO "public"."locationrate" VALUES ('00001', 'uEyz9MqaM', 4, NULL, '', 1, 0, 't', '{"{\"rate\": 3}"}');

-- ----------------------------
-- Table structure for locationratereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationratereaction";
CREATE TABLE "public"."locationratereaction" (
                                                 "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "time" timestamp(6),
                                                 "reaction" int2
)
;

-- ----------------------------
-- Records of locationratereaction
-- ----------------------------
INSERT INTO "public"."locationratereaction" VALUES ('00001', 'uEyz9MqaM', 'uEyz9MqaM', '2023-05-12 17:21:58.192462', 1);

-- ----------------------------
-- Table structure for locationreplycomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationreplycomment";
CREATE TABLE "public"."locationreplycomment" (
                                                 "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                 "commentthreadid" varchar(40) COLLATE "pg_catalog"."default",
                                                 "id" varchar(40) COLLATE "pg_catalog"."default",
                                                 "author" varchar(255) COLLATE "pg_catalog"."default",
                                                 "comment" text COLLATE "pg_catalog"."default",
                                                 "time" timestamptz(6),
                                                 "updatedat" timestamptz(6),
                                                 "histories" jsonb[]
)
;

-- ----------------------------
-- Records of locationreplycomment
-- ----------------------------
INSERT INTO "public"."locationreplycomment" VALUES ('3speDSv5z', 'OYBh0OCY3', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'say oh yeah', '2023-04-03 07:48:47.09+00', NULL, '{}');
INSERT INTO "public"."locationreplycomment" VALUES ('1-zYOlk9l', 'ywurd_OaC', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'hi', '2023-04-04 06:45:39.418+00', NULL, '{}');
INSERT INTO "public"."locationreplycomment" VALUES ('2dt1uofzQ', 'ywurd_OaC', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'hi', '2023-04-05 03:10:43.794+00', NULL, '{}');
INSERT INTO "public"."locationreplycomment" VALUES ('Md5KdWC4U', '4QkTPXfLt', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'hi', '2023-04-05 06:26:33.703+00', NULL, '{}');
INSERT INTO "public"."locationreplycomment" VALUES ('TYJOHlrmG', 'ywurd_OaC', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'huhuha', '2023-04-04 06:24:49.131+00', NULL, '{"{\"time\": \"2023-04-04T06:24:49.131Z\", \"comment\": \"hi\"}","{\"time\": \"2023-04-04T06:24:49.131Z\", \"comment\": \"huhu\"}"}');
INSERT INTO "public"."locationreplycomment" VALUES ('lHyMLJdCd', '8R2era603', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'asd', '2023-04-10 08:18:54.175+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('HkFjDqFqA', 'lCM2iMFwk', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'alo', '2023-04-13 07:58:30.403+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('N8mXZwfOK', '4QkTPXfLt', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'hu', '2023-04-13 10:33:23.292+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('Ldz_JTZ7r', '4QkTPXfLt', '5d146cbffbdf2b1d30742262', 'pu65Tr6FE', 'hihi', '2023-04-13 10:36:43.61+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('AAfigbGjv', '2wA097XQl', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'abc', '2023-04-14 01:25:16.495+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('SX-Xf3LAm', '2wA097XQl', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'yoo', '2023-04-14 02:36:39.823+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('wZ3ORsY89', '2wA097XQl', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'hellu', '2023-04-14 02:43:56.953+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('-zmT5A56L', '8R2era603', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'yeee', '2023-04-14 03:00:02.591+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('jl8CDl6b3', 'lCM2iMFwk', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'hnuu', '2023-04-14 04:05:45.184+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('da_aKQ1ay', 'lCM2iMFwk', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'yeee', '2023-04-14 04:19:05.272+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('wDQJjOwL9', '4QkTPXfLt', '5d146cbffbdf2b1d30742262', 'uEyz9MqaM', 'ola', '2023-04-17 09:02:49.003+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('Us-7Itqr2', 'WvbZM_GYu', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'quangta test', '2023-04-17 10:44:47.368+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('OicUalfhk', 'WvbZM_GYu', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'yooye', '2023-04-19 03:25:24.249+00', NULL, '{"{\"time\": \"2023-04-19T03:25:24.249Z\", \"comment\": \"yoo\"}"}');
INSERT INTO "public"."locationreplycomment" VALUES ('mlYHPKGMF', 'u7rf0YUD4', '5d1d7a66c5e4f320a86ca6b2', 'pu65Tr6FE', 'hihu', '2023-04-19 03:44:20.643+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('Q_Z7Z17Iz', 'wzBnAmMZ5', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'alo', '2023-04-20 04:25:48.598+00', NULL, NULL);
INSERT INTO "public"."locationreplycomment" VALUES ('JalL_XYfm', '8R2era603', '5d1d7a66c5e4f320a86ca6b2', 'uEyz9MqaM', 'yolola', '2023-04-20 04:55:59.23+00', NULL, '{"{\"time\": \"2023-04-20T04:55:59.230Z\", \"comment\": \"yolo\"}"}');

-- ----------------------------
-- Table structure for locationreplycommentinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationreplycommentinfo";
CREATE TABLE "public"."locationreplycommentinfo" (
                                                     "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                     "replycount" int4 DEFAULT 0,
                                                     "usefulcount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of locationreplycommentinfo
-- ----------------------------
INSERT INTO "public"."locationreplycommentinfo" VALUES ('Md5KdWC4U', 0, 0);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('lHyMLJdCd', 0, 0);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('HkFjDqFqA', 0, 0);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('jl8CDl6b3', 0, 0);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('da_aKQ1ay', 0, 1);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('wDQJjOwL9', 0, 0);
INSERT INTO "public"."locationreplycommentinfo" VALUES ('Ldz_JTZ7r', 0, 0);

-- ----------------------------
-- Table structure for locationreplycommentreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationreplycommentreaction";
CREATE TABLE "public"."locationreplycommentreaction" (
                                                         "commentid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "author" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "userid" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                                         "time" timestamptz(6),
                                                         "reaction" int2
)
;

-- ----------------------------
-- Records of locationreplycommentreaction
-- ----------------------------
INSERT INTO "public"."locationreplycommentreaction" VALUES ('da_aKQ1ay', 'pu65Tr6FE', 'pu65Tr6FE', '2023-04-14 04:19:09.024+00', 1);

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS "public"."music";
CREATE TABLE "public"."music" (
                                  "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                  "name" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
                                  "author" varchar[] COLLATE "pg_catalog"."default",
                                  "releasedate" date,
                                  "duration" date,
                                  "lyric" text COLLATE "pg_catalog"."default",
                                  "imageurl" varchar(300) COLLATE "pg_catalog"."default",
                                  "mp3url" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO "public"."music" VALUES ('1', 'Gió', '{Jank}', NULL, NULL, '', 'https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/cover/5/3/6/d/536dc591405fc70b6f4932eeb18337e8.jpg', 'https://mp3-s1-zmp3.zmdcdn.me/f93972208a60633e3a71/418807123490058032?authen=exp=1681271241~acl=/f93972208a60633e3a71/*~hmac=ecf8aab8f221a3d6df3a073bf7c4634a&fs=MTY4MTA5ODQ0MTk4N3x3ZWJWNnwwfDExNy42LjQyLjE1NA');

-- ----------------------------
-- Table structure for passwordcodes
-- ----------------------------
DROP TABLE IF EXISTS "public"."passwordcodes";
CREATE TABLE "public"."passwordcodes" (
                                          "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                          "code" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                          "expiredat" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of passwordcodes
-- ----------------------------

-- ----------------------------
-- Table structure for passwords
-- ----------------------------
DROP TABLE IF EXISTS "public"."passwords";
CREATE TABLE "public"."passwords" (
                                      "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                      "password" varchar(255) COLLATE "pg_catalog"."default",
                                      "successtime" timestamptz(6),
                                      "failtime" timestamptz(6),
                                      "failcount" int4,
                                      "lockeduntiltime" timestamptz(6),
                                      "history" varchar[] COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of passwords
-- ----------------------------
INSERT INTO "public"."passwords" VALUES ('W4-SSYOad', '$2b$10$RpVp81sI5zI/nDjKf5VmyeSg./i0fCNZZRZjXSXM/PrIhggKiSl6m', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('EAt0afrot', '$2b$10$HFPVKWD7YUC7MWbICbESQep8X/q1GPi858lHc0oXZmDkEmDVl0Bbe', '2022-10-13 04:51:57.443+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('hv5IMcgcQ', '$2b$10$misYaotOkglNej8V9vk4GuCbBokIdG6eQT8ag1X0GbeiSNX.BNO.a', '2022-10-13 06:57:51.42+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('w7GE8z1oF', '$2b$10$u7wDMhETf5PDyLPL4VsJAeb4EKCsd30Pa0dXLu3Bf6pCdG7C48M16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('gxLTXmdvq', '$2b$10$A0fFOOzSzZzA5vJ8hwUPfOEBK0uU0VvhAmK8ss4mcO6/TeVmxohpS', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('fmA8L1ic6', '$2b$10$koIL.Iysk.uW7Krig2ayvOUFoR0Fn1eNhJz6/FpqvZ4mCFVEqjfFG', '2022-10-20 07:28:40.132+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('errAItrtM', '$2a$10$gbzoZNf5UGIBXu4P8DKaoekqw3ajduyccM14qQGJYW2hN2W7O.4Ya', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('h3-bIa9tp', '$2a$10$Gy06IjZ463EEGKclZ8t41.wmtLPpsm5BikJxq8D0GFzHtDhOqORtS', '2022-11-11 11:28:59.242767+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('mPOdF3rap', '$2a$10$RYOJbtG1crorHlvkRpjcO.Cf21BWnEQXisdGtqKt2NDj0bRovv0/C', NULL, NULL, 0, NULL, '{$2a$10$tTDVSw3T3PRwy.heR6nKQ.KDHE1Del.U9IZqW25yOB4hcPpVp9x.6,$2a$10$y3AU6LXkjXD1ciFDHk/zqueejCi6Uhqnx7kzQBYrvwLZvXtoHOvB.,""}');
INSERT INTO "public"."passwords" VALUES ('1c7TAkSsA', '$2b$10$OLrEW8KE4OS8xbccTS72uuqNh7GMhcrHyuZJx7q6tm0rAJk54I3oi', '2022-11-10 03:08:12.467+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('uEyz9MqaM', '$2a$10$NS/TlMoJsvb/fHJsThDCHOSQq0XC5uDMgrf769paxRGh8DL1/5Gb2', '2023-05-12 02:40:54.956151+00', NULL, 0, NULL, NULL);
INSERT INTO "public"."passwords" VALUES ('pu65Tr6FE', '$2b$10$cuUU9pZcxnrvYbZLw8echezSHZ.l44or37RuG9O9K53prUf3cvjLO', '2023-05-12 06:40:13.736247+00', NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."playlist";
CREATE TABLE "public"."playlist" (
                                     "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                     "title" varchar(255) COLLATE "pg_catalog"."default",
                                     "userid" varchar(255) COLLATE "pg_catalog"."default",
                                     "imageurl" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO "public"."playlist" VALUES ('7f6kqpqi7', 'Listen', 'pu65Tr6FE', NULL);

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS "public"."reservation";
CREATE TABLE "public"."reservation" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "startdate" date,
                                        "enddate" date,
                                        "guestid" varchar(255) COLLATE "pg_catalog"."default",
                                        "totalprice" int4,
                                        "roomid" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of reservation
-- ----------------------------

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS "public"."room";
CREATE TABLE "public"."room" (
                                 "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                 "title" varchar(255) COLLATE "pg_catalog"."default",
                                 "description" varchar(1000) COLLATE "pg_catalog"."default",
                                 "price" int4,
                                 "offer" varchar[] COLLATE "pg_catalog"."default",
                                 "location" varchar(255) COLLATE "pg_catalog"."default",
                                 "host" varchar(255) COLLATE "pg_catalog"."default",
                                 "guest" int4,
                                 "bedrooms" int4,
                                 "bed" int4,
                                 "bathrooms" int4,
                                 "highlight" varchar[] COLLATE "pg_catalog"."default",
                                 "status" char(1) COLLATE "pg_catalog"."default",
                                 "region" varchar(255) COLLATE "pg_catalog"."default",
                                 "category" varchar[] COLLATE "pg_catalog"."default",
                                 "typeof" varchar[] COLLATE "pg_catalog"."default",
                                 "property" varchar(255) COLLATE "pg_catalog"."default",
                                 "language" varchar[] COLLATE "pg_catalog"."default",
                                 "imageurl" jsonb[]
)
;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO "public"."room" VALUES ('01', 'KHU NGHỈ DƯỠNG PIUGUS', 'Piugus resort tọa lạc tại một hòn đảo nhỏ tư nhân tại Anambas. Toàn bộ biệt thự được xây dựng từ gỗ tự nhiên.', 500, '{"Máy giặt","Sân hoặc ban công","Điều hòa nhiệt độ","Bữa sáng","Cho phép ở dài hạn","Cho phép hút thuốc"}', 'Anambas, Kepulauan Riau, Indonesia', 'Herry', 5, 1, 2, 1, '{"Self check-in","Great location","Dive right in"}', 'A', 'Viet Nam', '{Beach,"Tiny Home",Islands}', '{"Toàn bộ nhà","Phòng riêng","Phòng chung"}', 'Nhà', '{"Tiếng Anh","Tiếng Việt"}', '{"{\"url\": \"https://storage.googleapis.com/go-firestore-rest-api.appspot.com/gallery/JSg3tgoY0_3VZT2SW8b\", \"type\": \"image\"}","{\"url\": \"https://storage.googleapis.com/go-firestore-rest-api.appspot.com/gallery/JSg3tgoY0_oSipzWeYi\", \"type\": \"image\"}","{\"url\": \"https://storage.googleapis.com/go-firestore-rest-api.appspot.com/gallery/JSg3tgoY0_EF7bCPZry\", \"type\": \"image\"}"}');

-- ----------------------------
-- Table structure for saveditem
-- ----------------------------
DROP TABLE IF EXISTS "public"."saveditem";
CREATE TABLE "public"."saveditem" (
                                      "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                      "items" varchar[] COLLATE "pg_catalog"."default",
                                      "createdby" varchar(40) COLLATE "pg_catalog"."default",
                                      "createdat" timestamp(6),
                                      "updatedby" varchar(40) COLLATE "pg_catalog"."default",
                                      "updatedat" timestamp(6)
)
;

-- ----------------------------
-- Records of saveditem
-- ----------------------------
INSERT INTO "public"."saveditem" VALUES ('pu65Tr6FE', '{01,02,03,05}', 'pu65Tr6FE', '2022-07-19 00:00:00', 'pu65Tr6FE', '2022-07-20 00:00:00');

-- ----------------------------
-- Table structure for savedlocation
-- ----------------------------
DROP TABLE IF EXISTS "public"."savedlocation";
CREATE TABLE "public"."savedlocation" (
                                          "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                          "items" varchar[] COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of savedlocation
-- ----------------------------

-- ----------------------------
-- Table structure for signupcodes
-- ----------------------------
DROP TABLE IF EXISTS "public"."signupcodes";
CREATE TABLE "public"."signupcodes" (
                                        "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                        "code" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                        "expiredat" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of signupcodes
-- ----------------------------
INSERT INTO "public"."signupcodes" VALUES ('uEyz9MqaM', '$2a$10$Tj.gVmypc66rvAeFHybtr.VJOANZIBeQBh5NvuzEiCuGHrlHkSqEG', '2023-03-20 04:11:10.310384+00');
INSERT INTO "public"."signupcodes" VALUES ('W4-SSYOad', '$2b$10$GLndZAVCJzEE.2CJiLCxFu3YrvFQieQm46ZGp6XXTcWcbiM1crSZ.', '2022-10-12 11:07:36.779+00');
INSERT INTO "public"."signupcodes" VALUES ('fmA8L1ic6', '$2b$10$IInKP2z703eg1LrQMYpCZOKblTtOtp4gIOZKLnPQFVkmYLkEF7uaC', '2022-10-13 02:32:34.381+00');
INSERT INTO "public"."signupcodes" VALUES ('EAt0afrot', '$2b$10$yiPAyPZjcgN7si4w0W0SgeCah7uFYd2bq3cIARLfnNz6KKzcsMny.', '2022-10-13 04:29:22.179+00');
INSERT INTO "public"."signupcodes" VALUES ('hv5IMcgcQ', '$2b$10$NbB36eZmmoLJQv3rncgcEO6AL58TDtOszYfpTm94Xuynj72Ju7XCa', '2022-10-13 06:34:40.651+00');
INSERT INTO "public"."signupcodes" VALUES ('w7GE8z1oF', '$2b$10$fUm312/OmEA.MjoS5Dk11.kNwHcxS/tnCpjNGgflg3sTA8DoO/rgS', '2022-10-14 03:28:40.987+00');
INSERT INTO "public"."signupcodes" VALUES ('gxLTXmdvq', '$2b$10$W3KnDnzEKslAEsmQ3yBRtOSmb0WLy/ulpwYozu7VybePiqBRb9mdu', '2022-10-17 03:02:04.383+00');
INSERT INTO "public"."signupcodes" VALUES ('mJjun1i5y', '$2b$10$jyc20RCzqLyjVMsD2IvoAOBEqwZDomU8xBDLdu6.85HeHEdXjEE8e', '2022-10-20 07:41:05.714+00');
INSERT INTO "public"."signupcodes" VALUES ('h3-bIa9tp', '$2a$10$mVm.a/owEHCsrFoo/lz.fu8N/HlUB.SvV8DMFmpAvbwKPeFu64m5W', '2022-10-24 04:23:10.731694+00');
INSERT INTO "public"."signupcodes" VALUES ('errAItrtM', '$2a$10$M7XWanpmMvsiVtQWCZEVjetA4bnkwouWaFbCFduVK.IQY5T3B0MBy', '2022-10-24 04:27:00.943492+00');
INSERT INTO "public"."signupcodes" VALUES ('mPOdF3rap', '$2a$10$CGx5zLhznCJiCb5DomIZAe9vvFU0xy64JPtTUYbQ1F5bYqbtYgP9S', '2022-10-27 04:05:45.07198+00');
INSERT INTO "public"."signupcodes" VALUES ('pu65Tr6FE', '$2b$10$HhkKVEx9YMC1ZkHBUfjsQeW67HMPh1Cx8SqAQ6fTSTDqfTPwZqdmi', '2023-03-30 06:45:18.322+00');

-- ----------------------------
-- Table structure for usercompanies
-- ----------------------------
DROP TABLE IF EXISTS "public"."usercompanies";
CREATE TABLE "public"."usercompanies" (
    "company" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of usercompanies
-- ----------------------------
INSERT INTO "public"."usercompanies" VALUES ('tma');
INSERT INTO "public"."usercompanies" VALUES ('VN');
INSERT INTO "public"."usercompanies" VALUES ('kbtg');

-- ----------------------------
-- Table structure for usereducations
-- ----------------------------
DROP TABLE IF EXISTS "public"."usereducations";
CREATE TABLE "public"."usereducations" (
    "school" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of usereducations
-- ----------------------------
INSERT INTO "public"."usereducations" VALUES ('uit');

-- ----------------------------
-- Table structure for userfollower
-- ----------------------------
DROP TABLE IF EXISTS "public"."userfollower";
CREATE TABLE "public"."userfollower" (
                                         "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                         "follower" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of userfollower
-- ----------------------------

-- ----------------------------
-- Table structure for userfollowing
-- ----------------------------
DROP TABLE IF EXISTS "public"."userfollowing";
CREATE TABLE "public"."userfollowing" (
                                          "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                          "following" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of userfollowing
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."userinfo";
CREATE TABLE "public"."userinfo" (
                                     "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                     "followercount" int8 DEFAULT 0,
                                     "followingcount" int8 DEFAULT 0,
                                     "rate1" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO "public"."userinfo" VALUES ('pu65Tr6FE', 1, 1, 0);

-- ----------------------------
-- Table structure for userinfomation
-- ----------------------------
DROP TABLE IF EXISTS "public"."userinfomation";
CREATE TABLE "public"."userinfomation" (
                                           "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                           "appreciate" int8 DEFAULT 0,
                                           "respect" int8 DEFAULT 0,
                                           "admire" int8 DEFAULT 0,
                                           "reactioncount" int8 DEFAULT 0
)
;

-- ----------------------------
-- Records of userinfomation
-- ----------------------------

-- ----------------------------
-- Table structure for userinterests
-- ----------------------------
DROP TABLE IF EXISTS "public"."userinterests";
CREATE TABLE "public"."userinterests" (
    "interest" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of userinterests
-- ----------------------------
INSERT INTO "public"."userinterests" VALUES ('game');
INSERT INTO "public"."userinterests" VALUES ('movie');
INSERT INTO "public"."userinterests" VALUES ('coding');
INSERT INTO "public"."userinterests" VALUES ('football');
INSERT INTO "public"."userinterests" VALUES ('basketball');
INSERT INTO "public"."userinterests" VALUES ('books');
INSERT INTO "public"."userinterests" VALUES ('money');
INSERT INTO "public"."userinterests" VALUES ('manga');
INSERT INTO "public"."userinterests" VALUES ('badminton');
INSERT INTO "public"."userinterests" VALUES ('esport');
INSERT INTO "public"."userinterests" VALUES ('food');
INSERT INTO "public"."userinterests" VALUES ('swim');

-- ----------------------------
-- Table structure for userrate
-- ----------------------------
DROP TABLE IF EXISTS "public"."userrate";
CREATE TABLE "public"."userrate" (
                                     "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                     "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                     "rate" int4,
                                     "time" timestamp(6),
                                     "review" text COLLATE "pg_catalog"."default",
                                     "usefulcount" int4 DEFAULT 0,
                                     "replycount" int4 DEFAULT 0,
                                     "histories" jsonb[]
)
;

-- ----------------------------
-- Records of userrate
-- ----------------------------

-- ----------------------------
-- Table structure for userratecomment
-- ----------------------------
DROP TABLE IF EXISTS "public"."userratecomment";
CREATE TABLE "public"."userratecomment" (
                                            "commentid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                            "id" varchar(255) COLLATE "pg_catalog"."default",
                                            "author" varchar(255) COLLATE "pg_catalog"."default",
                                            "userid" varchar(255) COLLATE "pg_catalog"."default",
                                            "comment" text COLLATE "pg_catalog"."default",
                                            "time" timestamp(6),
                                            "updatedat" timestamp(6),
                                            "histories" jsonb[]
)
;

-- ----------------------------
-- Records of userratecomment
-- ----------------------------

-- ----------------------------
-- Table structure for userrateinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."userrateinfo";
CREATE TABLE "public"."userrateinfo" (
                                         "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                         "rate" numeric DEFAULT 0,
                                         "rate1" int4 DEFAULT 0,
                                         "rate2" int4 DEFAULT 0,
                                         "rate3" int4 DEFAULT 0,
                                         "rate4" int4 DEFAULT 0,
                                         "rate5" int4 DEFAULT 0,
                                         "rate6" int4 DEFAULT 0,
                                         "rate7" int4 DEFAULT 0,
                                         "rate8" int4 DEFAULT 0,
                                         "rate9" int4 DEFAULT 0,
                                         "rate10" int4 DEFAULT 0,
                                         "count" int4,
                                         "score" numeric
)
;

-- ----------------------------
-- Records of userrateinfo
-- ----------------------------

-- ----------------------------
-- Table structure for userratereaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."userratereaction";
CREATE TABLE "public"."userratereaction" (
                                             "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                             "time" timestamp(6),
                                             "reaction" int2
)
;

-- ----------------------------
-- Records of userratereaction
-- ----------------------------

-- ----------------------------
-- Table structure for userreaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."userreaction";
CREATE TABLE "public"."userreaction" (
                                         "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                         "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                         "userid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                         "reaction" int2,
                                         "time" timestamp(6)
)
;

-- ----------------------------
-- Records of userreaction
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
                                  "id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                  "username" varchar(120) COLLATE "pg_catalog"."default",
                                  "email" varchar(120) COLLATE "pg_catalog"."default",
                                  "phone" varchar(45) COLLATE "pg_catalog"."default",
                                  "gender" char(1) COLLATE "pg_catalog"."default",
                                  "displayname" varchar(500) COLLATE "pg_catalog"."default",
                                  "givenname" varchar(100) COLLATE "pg_catalog"."default",
                                  "familyname" varchar(100) COLLATE "pg_catalog"."default",
                                  "middlename" varchar(100) COLLATE "pg_catalog"."default",
                                  "alternativeemail" varchar(255) COLLATE "pg_catalog"."default",
                                  "alternativephone" varchar(45) COLLATE "pg_catalog"."default",
                                  "imageurl" varchar(255) COLLATE "pg_catalog"."default",
                                  "coverurl" varchar(255) COLLATE "pg_catalog"."default",
                                  "title" varchar(255) COLLATE "pg_catalog"."default",
                                  "nationality" varchar(255) COLLATE "pg_catalog"."default",
                                  "address" varchar(255) COLLATE "pg_catalog"."default",
                                  "bio" varchar(255) COLLATE "pg_catalog"."default",
                                  "website" varchar(255) COLLATE "pg_catalog"."default",
                                  "occupation" varchar(255) COLLATE "pg_catalog"."default",
                                  "company" varchar(255) COLLATE "pg_catalog"."default",
                                  "location" varchar(255) COLLATE "pg_catalog"."default",
                                  "maxpasswordage" int4,
                                  "dateofbirth" timestamptz(6),
                                  "settings" jsonb,
                                  "links" jsonb,
                                  "gallery" jsonb[],
                                  "skills" jsonb[],
                                  "achievements" jsonb[],
                                  "works" jsonb[],
                                  "companies" jsonb[],
                                  "educations" jsonb[],
                                  "interests" varchar[] COLLATE "pg_catalog"."default",
                                  "lookingfor" varchar[] COLLATE "pg_catalog"."default",
                                  "status" char(1) COLLATE "pg_catalog"."default",
                                  "createdby" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                  "createdat" timestamptz(6),
                                  "updatedby" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
                                  "updatedat" timestamptz(6),
                                  "social" jsonb,
                                  "version" int4
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('AWvaYDttM', 'vinhtq2020', 'vinhtq2020@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.worldhistory.org/img/r/p/500x600/13337.jpeg?v=1654040539', 'https://gratisography.com/wp-content/uploads/2022/05/gratisography-heavenly-free-stock-photo-1170x775.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AWvaYDttM', NULL, 'AWvaYDttM', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('uEyz9MqaM', 'quangta', 'quang.tx305@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://i1-vnexpress.vnecdn.net/2022/06/13/VNE-Khan-1457-1655098232.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=sjrVp41LWtp3zF9g39TqZA', 'https://gratisography.com/wp-content/uploads/2022/05/gratisography-heavenly-free-stock-photo-1170x775.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'uEyz9MqaM', '2023-03-20 03:11:10.228538+00', 'uEyz9MqaM', '2023-03-20 03:12:10.228538+00', NULL, 2);
INSERT INTO "public"."users" VALUES ('pu65Tr6FE', 'taquang', 'quang.tx306@gmail.com', NULL, NULL, 'quang2', 'Dev', 'Dev', NULL, NULL, NULL, 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/image/pu65Tr6FE_iyExI6wo2_326691424_1371589173612664_2476295418492007821_n.png', 'https://storage.googleapis.com/go-firestore-rest-api.appspot.com/cover/pu65Tr6FE_98yWLi3vZ_327187306_503724738543794_1432704642271550047_n.jpg', NULL, NULL, NULL, 'hi', 'dev.com', 'Dev', 'VN', NULL, 90, NULL, NULL, '{"facebook": "facebook.com"}', '{"{\"url\": \"https://storage.googleapis.com/go-firestore-rest-api.appspot.com/gallery/pu65Tr6FE_CPhDv76RF\", \"type\": \"image\"}","{\"url\": \"https://storage.googleapis.com/go-firestore-rest-api.appspot.com/gallery/pu65Tr6FE_gVckNJn5J\", \"type\": \"image\"}"}', '{"{\"skill\": \"reactjs\", \"hirable\": false}"}', '{"{\"subject\": \"champion\", \"highlight\": false, \"description\": \"LoL\"}"}', '{"{\"to\": \"2023-12\", \"from\": \"2023-04\", \"name\": \"dev\", \"position\": \"dev\", \"description\": \"dev\"}"}', '{"{\"to\": \"2023-12\", \"from\": \"2023-01\", \"name\": \"kbtg\", \"position\": \"dev\", \"description\": \"dev\"}"}', '{"{\"to\": \"2023-12\", \"from\": \"2023-01\", \"major\": \"uit\", \"title\": \"uit\", \"degree\": \"uit\", \"school\": \"uit\"}"}', '{coding}', '{friend,"basketball team"}', 'A', 'pu65Tr6FE', '2023-03-30 06:36:58.26+00', 'pu65Tr6FE', '2023-03-30 06:36:58.26+00', NULL, 2);

-- ----------------------------
-- Table structure for usersearchs
-- ----------------------------
DROP TABLE IF EXISTS "public"."usersearchs";
CREATE TABLE "public"."usersearchs" (
    "item" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of usersearchs
-- ----------------------------
INSERT INTO "public"."usersearchs" VALUES ('friend');
INSERT INTO "public"."usersearchs" VALUES ('room mate');
INSERT INTO "public"."usersearchs" VALUES ('basketball team');

-- ----------------------------
-- Table structure for userskills
-- ----------------------------
DROP TABLE IF EXISTS "public"."userskills";
CREATE TABLE "public"."userskills" (
    "skill" varchar(120) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of userskills
-- ----------------------------
INSERT INTO "public"."userskills" VALUES ('java');
INSERT INTO "public"."userskills" VALUES ('javascripts');
INSERT INTO "public"."userskills" VALUES ('c++');
INSERT INTO "public"."userskills" VALUES ('c#');
INSERT INTO "public"."userskills" VALUES ('c');
INSERT INTO "public"."userskills" VALUES ('python');
INSERT INTO "public"."userskills" VALUES ('ruby');
INSERT INTO "public"."userskills" VALUES ('rust');
INSERT INTO "public"."userskills" VALUES ('reactjs');
INSERT INTO "public"."userskills" VALUES ('angular');
INSERT INTO "public"."userskills" VALUES ('vue');
INSERT INTO "public"."userskills" VALUES ('express');
INSERT INTO "public"."userskills" VALUES ('codeigniter');
INSERT INTO "public"."userskills" VALUES ('react native');
INSERT INTO "public"."userskills" VALUES ('flutter');

-- ----------------------------
-- Function structure for _int_contained
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contained"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_contained"(_int4, _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', '_int_contained'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."_int_contained"(_int4, _int4) IS 'contained in';

-- ----------------------------
-- Function structure for _int_contained_joinsel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contained_joinsel"(internal, oid, internal, int2, internal);
CREATE OR REPLACE FUNCTION "public"."_int_contained_joinsel"(internal, oid, internal, int2, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_contained_joinsel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_contained_sel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contained_sel"(internal, oid, internal, int4);
CREATE OR REPLACE FUNCTION "public"."_int_contained_sel"(internal, oid, internal, int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_contained_sel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_contains
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contains"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_contains"(_int4, _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', '_int_contains'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."_int_contains"(_int4, _int4) IS 'contains';

-- ----------------------------
-- Function structure for _int_contains_joinsel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contains_joinsel"(internal, oid, internal, int2, internal);
CREATE OR REPLACE FUNCTION "public"."_int_contains_joinsel"(internal, oid, internal, int2, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_contains_joinsel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_contains_sel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_contains_sel"(internal, oid, internal, int4);
CREATE OR REPLACE FUNCTION "public"."_int_contains_sel"(internal, oid, internal, int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_contains_sel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_different
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_different"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_different"(_int4, _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', '_int_different'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."_int_different"(_int4, _int4) IS 'different';

-- ----------------------------
-- Function structure for _int_inter
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_inter"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_inter"(_int4, _int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', '_int_inter'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_matchsel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_matchsel"(internal, oid, internal, int4);
CREATE OR REPLACE FUNCTION "public"."_int_matchsel"(internal, oid, internal, int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_matchsel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_overlap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_overlap"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_overlap"(_int4, _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', '_int_overlap'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."_int_overlap"(_int4, _int4) IS 'overlaps';

-- ----------------------------
-- Function structure for _int_overlap_joinsel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_overlap_joinsel"(internal, oid, internal, int2, internal);
CREATE OR REPLACE FUNCTION "public"."_int_overlap_joinsel"(internal, oid, internal, int2, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_overlap_joinsel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_overlap_sel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_overlap_sel"(internal, oid, internal, int4);
CREATE OR REPLACE FUNCTION "public"."_int_overlap_sel"(internal, oid, internal, int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/_int', '_int_overlap_sel'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _int_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_same"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_same"(_int4, _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', '_int_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."_int_same"(_int4, _int4) IS 'same as';

-- ----------------------------
-- Function structure for _int_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_int_union"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."_int_union"(_int4, _int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', '_int_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _intbig_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_intbig_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."_intbig_in"(cstring)
  RETURNS "public"."intbig_gkey" AS '$libdir/_int', '_intbig_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _intbig_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_intbig_out"("public"."intbig_gkey");
CREATE OR REPLACE FUNCTION "public"."_intbig_out"("public"."intbig_gkey")
  RETURNS "pg_catalog"."cstring" AS '$libdir/_int', '_intbig_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _lt_q_regex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lt_q_regex"("public"."_ltree", "public"."_lquery");
CREATE OR REPLACE FUNCTION "public"."_lt_q_regex"("public"."_ltree", "public"."_lquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_lt_q_regex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _lt_q_rregex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lt_q_rregex"("public"."_lquery", "public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."_lt_q_rregex"("public"."_lquery", "public"."_ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_lt_q_rregex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltq_extract_regex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltq_extract_regex"("public"."_ltree", "public"."lquery");
CREATE OR REPLACE FUNCTION "public"."_ltq_extract_regex"("public"."_ltree", "public"."lquery")
  RETURNS "public"."ltree" AS '$libdir/ltree', '_ltq_extract_regex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltq_regex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltq_regex"("public"."_ltree", "public"."lquery");
CREATE OR REPLACE FUNCTION "public"."_ltq_regex"("public"."_ltree", "public"."lquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltq_regex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltq_rregex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltq_rregex"("public"."lquery", "public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."_ltq_rregex"("public"."lquery", "public"."_ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltq_rregex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', '_ltree_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_consistent"(internal, "public"."_ltree", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_consistent"(internal, "public"."_ltree", int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltree_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_extract_isparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_extract_isparent"("public"."_ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_extract_isparent"("public"."_ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', '_ltree_extract_isparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_extract_risparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_extract_risparent"("public"."_ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_extract_risparent"("public"."_ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', '_ltree_extract_risparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_isparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_isparent"("public"."_ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_isparent"("public"."_ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltree_isparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', '_ltree_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', '_ltree_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_r_isparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_r_isparent"("public"."ltree", "public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_r_isparent"("public"."ltree", "public"."_ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltree_r_isparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_r_risparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_r_risparent"("public"."ltree", "public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_r_risparent"("public"."ltree", "public"."_ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltree_r_risparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_risparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_risparent"("public"."_ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."_ltree_risparent"("public"."_ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltree_risparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_same"("public"."ltree_gist", "public"."ltree_gist", internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_same"("public"."ltree_gist", "public"."ltree_gist", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', '_ltree_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltree_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltree_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."_ltree_union"(internal, internal)
  RETURNS "public"."ltree_gist" AS '$libdir/ltree', '_ltree_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltxtq_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltxtq_exec"("public"."_ltree", "public"."ltxtquery");
CREATE OR REPLACE FUNCTION "public"."_ltxtq_exec"("public"."_ltree", "public"."ltxtquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltxtq_exec'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltxtq_extract_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltxtq_extract_exec"("public"."_ltree", "public"."ltxtquery");
CREATE OR REPLACE FUNCTION "public"."_ltxtq_extract_exec"("public"."_ltree", "public"."ltxtquery")
  RETURNS "public"."ltree" AS '$libdir/ltree', '_ltxtq_extract_exec'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for _ltxtq_rexec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ltxtq_rexec"("public"."ltxtquery", "public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."_ltxtq_rexec"("public"."ltxtquery", "public"."_ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', '_ltxtq_rexec'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for akeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."akeys"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."akeys"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_akeys'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea);
CREATE OR REPLACE FUNCTION "public"."armor"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea, _text, _text);
CREATE OR REPLACE FUNCTION "public"."armor"(bytea, _text, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for avals
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."avals"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."avals"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_avals'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for boolop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."boolop"(_int4, "public"."query_int");
CREATE OR REPLACE FUNCTION "public"."boolop"(_int4, "public"."query_int")
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', 'boolop'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."boolop"(_int4, "public"."query_int") IS 'boolean operation with array';

-- ----------------------------
-- Function structure for bqarr_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bqarr_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."bqarr_in"(cstring)
  RETURNS "public"."query_int" AS '$libdir/_int', 'bqarr_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for bqarr_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bqarr_out"("public"."query_int");
CREATE OR REPLACE FUNCTION "public"."bqarr_out"("public"."query_int")
  RETURNS "pg_catalog"."cstring" AS '$libdir/_int', 'bqarr_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cash_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cash_dist"(money, money);
CREATE OR REPLACE FUNCTION "public"."cash_dist"(money, money)
  RETURNS "pg_catalog"."money" AS '$libdir/btree_gist', 'cash_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext"(bpchar);
CREATE OR REPLACE FUNCTION "public"."citext"(bpchar)
  RETURNS "public"."citext" AS $BODY$rtrim1$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext"(bool);
CREATE OR REPLACE FUNCTION "public"."citext"(bool)
  RETURNS "public"."citext" AS $BODY$booltext$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext"(inet);
CREATE OR REPLACE FUNCTION "public"."citext"(inet)
  RETURNS "public"."citext" AS $BODY$network_show$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_cmp"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_cmp"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."int4" AS '$libdir/citext', 'citext_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_eq"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_eq"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_eq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_ge"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_ge"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_gt"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_gt"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_hash
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_hash"("public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_hash"("public"."citext")
  RETURNS "pg_catalog"."int4" AS '$libdir/citext', 'citext_hash'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_larger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_larger"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_larger"("public"."citext", "public"."citext")
  RETURNS "public"."citext" AS '$libdir/citext', 'citext_larger'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_le"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_le"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_lt"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_lt"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_ne"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_ne"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_ne'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_pattern_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_pattern_cmp"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_pattern_cmp"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."int4" AS '$libdir/citext', 'citext_pattern_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_pattern_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_pattern_ge"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_pattern_ge"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_pattern_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_pattern_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_pattern_gt"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_pattern_gt"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_pattern_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_pattern_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_pattern_le"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_pattern_le"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_pattern_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_pattern_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_pattern_lt"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_pattern_lt"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS '$libdir/citext', 'citext_pattern_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citext_smaller
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citext_smaller"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."citext_smaller"("public"."citext", "public"."citext")
  RETURNS "public"."citext" AS '$libdir/citext', 'citext_smaller'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citextin
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citextin"(cstring);
CREATE OR REPLACE FUNCTION "public"."citextin"(cstring)
  RETURNS "public"."citext" AS $BODY$textin$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citextout
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citextout"("public"."citext");
CREATE OR REPLACE FUNCTION "public"."citextout"("public"."citext")
  RETURNS "pg_catalog"."cstring" AS $BODY$textout$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citextrecv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citextrecv"(internal);
CREATE OR REPLACE FUNCTION "public"."citextrecv"(internal)
  RETURNS "public"."citext" AS $BODY$textrecv$BODY$
  LANGUAGE internal STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for citextsend
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."citextsend"("public"."citext");
CREATE OR REPLACE FUNCTION "public"."citextsend"("public"."citext")
  RETURNS "pg_catalog"."bytea" AS $BODY$textsend$BODY$
  LANGUAGE internal STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for connectby
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."connectby"(text, text, text, text, int4, text);
CREATE OR REPLACE FUNCTION "public"."connectby"(text, text, text, text, int4, text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'connectby_text'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for connectby
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."connectby"(text, text, text, text, int4);
CREATE OR REPLACE FUNCTION "public"."connectby"(text, text, text, text, int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'connectby_text'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for connectby
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."connectby"(text, text, text, text, text, int4, text);
CREATE OR REPLACE FUNCTION "public"."connectby"(text, text, text, text, text, int4, text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'connectby_text_serial'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for connectby
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."connectby"(text, text, text, text, text, int4);
CREATE OR REPLACE FUNCTION "public"."connectby"(text, text, text, text, text, int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'connectby_text_serial'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab"(text);
CREATE OR REPLACE FUNCTION "public"."crosstab"(text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'crosstab'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab"(text, int4);
CREATE OR REPLACE FUNCTION "public"."crosstab"(text, int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'crosstab'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab"(text, text);
CREATE OR REPLACE FUNCTION "public"."crosstab"(text, text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/tablefunc', 'crosstab_hash'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab2"(text);
CREATE OR REPLACE FUNCTION "public"."crosstab2"(text)
  RETURNS SETOF "public"."tablefunc_crosstab_2" AS '$libdir/tablefunc', 'crosstab'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab3"(text);
CREATE OR REPLACE FUNCTION "public"."crosstab3"(text)
  RETURNS SETOF "public"."tablefunc_crosstab_3" AS '$libdir/tablefunc', 'crosstab'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crosstab4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crosstab4"(text);
CREATE OR REPLACE FUNCTION "public"."crosstab4"(text)
  RETURNS SETOF "public"."tablefunc_crosstab_4" AS '$libdir/tablefunc', 'crosstab'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for crypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crypt"(text, text);
CREATE OR REPLACE FUNCTION "public"."crypt"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_crypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"(_float8);
CREATE OR REPLACE FUNCTION "public"."cube"(_float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_a_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"("public"."cube", float8, float8);
CREATE OR REPLACE FUNCTION "public"."cube"("public"."cube", float8, float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_c_f8_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"(float8);
CREATE OR REPLACE FUNCTION "public"."cube"(float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"(_float8, _float8);
CREATE OR REPLACE FUNCTION "public"."cube"(_float8, _float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_a_f8_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"("public"."cube", float8);
CREATE OR REPLACE FUNCTION "public"."cube"("public"."cube", float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_c_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube"(float8, float8);
CREATE OR REPLACE FUNCTION "public"."cube"(float8, float8)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_f8_f8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_cmp"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_cmp"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."int4" AS '$libdir/cube', 'cube_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_cmp"("public"."cube", "public"."cube") IS 'btree comparison function';

-- ----------------------------
-- Function structure for cube_contained
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_contained"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_contained"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_contained'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_contained"("public"."cube", "public"."cube") IS 'contained in';

-- ----------------------------
-- Function structure for cube_contains
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_contains"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_contains"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_contains'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_contains"("public"."cube", "public"."cube") IS 'contains';

-- ----------------------------
-- Function structure for cube_coord
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_coord"("public"."cube", int4);
CREATE OR REPLACE FUNCTION "public"."cube_coord"("public"."cube", int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_coord'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_coord_llur
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_coord_llur"("public"."cube", int4);
CREATE OR REPLACE FUNCTION "public"."cube_coord_llur"("public"."cube", int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_coord_llur'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_dim
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_dim"("public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_dim"("public"."cube")
  RETURNS "pg_catalog"."int4" AS '$libdir/cube', 'cube_dim'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_distance"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_distance"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_enlarge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_enlarge"("public"."cube", float8, int4);
CREATE OR REPLACE FUNCTION "public"."cube_enlarge"("public"."cube", float8, int4)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_enlarge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_eq"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_eq"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_eq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_eq"("public"."cube", "public"."cube") IS 'same as';

-- ----------------------------
-- Function structure for cube_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_ge"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_ge"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_ge"("public"."cube", "public"."cube") IS 'greater than or equal to';

-- ----------------------------
-- Function structure for cube_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_gt"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_gt"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_gt"("public"."cube", "public"."cube") IS 'greater than';

-- ----------------------------
-- Function structure for cube_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."cube_in"(cstring)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_inter
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_inter"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_inter"("public"."cube", "public"."cube")
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_inter'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_is_point
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_is_point"("public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_is_point"("public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_is_point'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_le"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_le"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_le"("public"."cube", "public"."cube") IS 'lower than or equal to';

-- ----------------------------
-- Function structure for cube_ll_coord
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_ll_coord"("public"."cube", int4);
CREATE OR REPLACE FUNCTION "public"."cube_ll_coord"("public"."cube", int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_ll_coord'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_lt"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_lt"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_lt"("public"."cube", "public"."cube") IS 'lower than';

-- ----------------------------
-- Function structure for cube_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_ne"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_ne"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_ne'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_ne"("public"."cube", "public"."cube") IS 'different';

-- ----------------------------
-- Function structure for cube_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_out"("public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_out"("public"."cube")
  RETURNS "pg_catalog"."cstring" AS '$libdir/cube', 'cube_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_overlap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_overlap"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_overlap"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'cube_overlap'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."cube_overlap"("public"."cube", "public"."cube") IS 'overlaps';

-- ----------------------------
-- Function structure for cube_size
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_size"("public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_size"("public"."cube")
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_size'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_subset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_subset"("public"."cube", _int4);
CREATE OR REPLACE FUNCTION "public"."cube_subset"("public"."cube", _int4)
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_subset'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_union"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."cube_union"("public"."cube", "public"."cube")
  RETURNS "public"."cube" AS '$libdir/cube', 'cube_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for cube_ur_coord
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cube_ur_coord"("public"."cube", int4);
CREATE OR REPLACE FUNCTION "public"."cube_ur_coord"("public"."cube", int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'cube_ur_coord'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for date_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."date_dist"(date, date);
CREATE OR REPLACE FUNCTION "public"."date_dist"(date, date)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gist', 'date_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink"(text);
CREATE OR REPLACE FUNCTION "public"."dblink"(text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_record'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink"(text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink"(text, bool)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_record'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink"(text, text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink"(text, text, bool)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_record'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink"(text, text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_record'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_build_sql_delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_build_sql_delete"(text, int2vector, int4, _text);
CREATE OR REPLACE FUNCTION "public"."dblink_build_sql_delete"(text, int2vector, int4, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_build_sql_delete'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_build_sql_insert
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_build_sql_insert"(text, int2vector, int4, _text, _text);
CREATE OR REPLACE FUNCTION "public"."dblink_build_sql_insert"(text, int2vector, int4, _text, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_build_sql_insert'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_build_sql_update
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_build_sql_update"(text, int2vector, int4, _text, _text);
CREATE OR REPLACE FUNCTION "public"."dblink_build_sql_update"(text, int2vector, int4, _text, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_build_sql_update'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_cancel_query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_cancel_query"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_cancel_query"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_cancel_query'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_close
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_close"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_close"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_close'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_close
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_close"(text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_close"(text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_close'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_close
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_close"(text, text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_close"(text, text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_close'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_close
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_close"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_close"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_close'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_connect
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_connect"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_connect"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_connect'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_connect
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_connect"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_connect"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_connect'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_connect_u
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_connect_u"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_connect_u"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_connect'
  LANGUAGE c VOLATILE STRICT SECURITY DEFINER
  COST 1;

-- ----------------------------
-- Function structure for dblink_connect_u
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_connect_u"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_connect_u"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_connect'
  LANGUAGE c VOLATILE STRICT SECURITY DEFINER
  COST 1;

-- ----------------------------
-- Function structure for dblink_current_query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_current_query"();
CREATE OR REPLACE FUNCTION "public"."dblink_current_query"()
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_current_query'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for dblink_disconnect
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_disconnect"();
CREATE OR REPLACE FUNCTION "public"."dblink_disconnect"()
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_disconnect'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_disconnect
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_disconnect"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_disconnect"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_disconnect'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_error_message
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_error_message"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_error_message"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_error_message'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_exec"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_exec"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_exec'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_exec"(text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_exec"(text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_exec'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_exec"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_exec"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_exec'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_exec"(text, text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_exec"(text, text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_exec'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_fdw_validator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_fdw_validator"("options" _text, "catalog" oid);
CREATE OR REPLACE FUNCTION "public"."dblink_fdw_validator"("options" _text, "catalog" oid)
  RETURNS "pg_catalog"."void" AS '$libdir/dblink', 'dblink_fdw_validator'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_fetch"(text, int4);
CREATE OR REPLACE FUNCTION "public"."dblink_fetch"(text, int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_fetch'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_fetch"(text, int4, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_fetch"(text, int4, bool)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_fetch'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_fetch"(text, text, int4, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_fetch"(text, text, int4, bool)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_fetch'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_fetch"(text, text, int4);
CREATE OR REPLACE FUNCTION "public"."dblink_fetch"(text, text, int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_fetch'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_get_connections
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_connections"();
CREATE OR REPLACE FUNCTION "public"."dblink_get_connections"()
  RETURNS "pg_catalog"."_text" AS '$libdir/dblink', 'dblink_get_connections'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for dblink_get_notify
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_notify"(OUT "notify_name" text, OUT "be_pid" int4, OUT "extra" text);
CREATE OR REPLACE FUNCTION "public"."dblink_get_notify"(OUT "notify_name" text, OUT "be_pid" int4, OUT "extra" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_get_notify'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_get_notify
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_notify"("conname" text, OUT "notify_name" text, OUT "be_pid" int4, OUT "extra" text);
CREATE OR REPLACE FUNCTION "public"."dblink_get_notify"(IN "conname" text, OUT "notify_name" text, OUT "be_pid" int4, OUT "extra" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_get_notify'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_get_pkey
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_pkey"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_get_pkey"(text)
  RETURNS SETOF "public"."dblink_pkey_results" AS '$libdir/dblink', 'dblink_get_pkey'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_get_result
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_result"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_get_result"(text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_get_result'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_get_result
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_get_result"(text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_get_result"(text, bool)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/dblink', 'dblink_get_result'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for dblink_is_busy
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_is_busy"(text);
CREATE OR REPLACE FUNCTION "public"."dblink_is_busy"(text)
  RETURNS "pg_catalog"."int4" AS '$libdir/dblink', 'dblink_is_busy'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_open
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_open"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_open"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_open'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_open
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_open"(text, text, text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_open"(text, text, text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_open'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_open
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_open"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_open"(text, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_open'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_open
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_open"(text, text, bool);
CREATE OR REPLACE FUNCTION "public"."dblink_open"(text, text, bool)
  RETURNS "pg_catalog"."text" AS '$libdir/dblink', 'dblink_open'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dblink_send_query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dblink_send_query"(text, text);
CREATE OR REPLACE FUNCTION "public"."dblink_send_query"(text, text)
  RETURNS "pg_catalog"."int4" AS '$libdir/dblink', 'dblink_send_query'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dearmor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dearmor"(text);
CREATE OR REPLACE FUNCTION "public"."dearmor"(text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_dearmor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt_iv"(bytea, bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."decrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for defined
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."defined"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."defined"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_defined'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", "public"."hstore")
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for delete
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."delete"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."delete"("public"."hstore", _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_delete_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for difference
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."difference"(text, text);
CREATE OR REPLACE FUNCTION "public"."difference"(text, text)
  RETURNS "pg_catalog"."int4" AS '$libdir/fuzzystrmatch', 'difference'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."digest"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(text, text);
CREATE OR REPLACE FUNCTION "public"."digest"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dintdict_init
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dintdict_init"(internal);
CREATE OR REPLACE FUNCTION "public"."dintdict_init"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/dict_int', 'dintdict_init'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dintdict_lexize
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dintdict_lexize"(internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."dintdict_lexize"(internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/dict_int', 'dintdict_lexize'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for distance_chebyshev
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."distance_chebyshev"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."distance_chebyshev"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'distance_chebyshev'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for distance_taxicab
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."distance_taxicab"("public"."cube", "public"."cube");
CREATE OR REPLACE FUNCTION "public"."distance_taxicab"("public"."cube", "public"."cube")
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'distance_taxicab'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dmetaphone
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dmetaphone"(text);
CREATE OR REPLACE FUNCTION "public"."dmetaphone"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/fuzzystrmatch', 'dmetaphone'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dmetaphone_alt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dmetaphone_alt"(text);
CREATE OR REPLACE FUNCTION "public"."dmetaphone_alt"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/fuzzystrmatch', 'dmetaphone_alt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dxsyn_init
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dxsyn_init"(internal);
CREATE OR REPLACE FUNCTION "public"."dxsyn_init"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/dict_xsyn', 'dxsyn_init'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dxsyn_lexize
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dxsyn_lexize"(internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."dxsyn_lexize"(internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/dict_xsyn', 'dxsyn_lexize'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for each
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."each"("hs" "public"."hstore", OUT "key" text, OUT "value" text);
CREATE OR REPLACE FUNCTION "public"."each"(IN "hs" "public"."hstore", OUT "key" text, OUT "value" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/hstore', 'hstore_each'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for earth
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."earth"();
CREATE OR REPLACE FUNCTION "public"."earth"()
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT '6378168'::float8$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for earth_box
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."earth_box"("public"."earth", float8);
CREATE OR REPLACE FUNCTION "public"."earth_box"("public"."earth", float8)
  RETURNS "public"."cube" AS $BODY$SELECT cube_enlarge($1, gc_to_sec($2), 3)$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for earth_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."earth_distance"("public"."earth", "public"."earth");
CREATE OR REPLACE FUNCTION "public"."earth_distance"("public"."earth", "public"."earth")
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT sec_to_gc(cube_distance($1, $2))$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."encrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for encrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt_iv"(bytea, bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."encrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for exist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exist"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."exist"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for exists_all
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exists_all"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."exists_all"("public"."hstore", _text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists_all'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for exists_any
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."exists_any"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."exists_any"("public"."hstore", _text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists_any'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for fetchval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fetchval"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."fetchval"("public"."hstore", text)
  RETURNS "pg_catalog"."text" AS '$libdir/hstore', 'hstore_fetchval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for float4_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."float4_dist"(float4, float4);
CREATE OR REPLACE FUNCTION "public"."float4_dist"(float4, float4)
  RETURNS "pg_catalog"."float4" AS '$libdir/btree_gist', 'float4_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for float8_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."float8_dist"(float8, float8);
CREATE OR REPLACE FUNCTION "public"."float8_dist"(float8, float8)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'float8_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_consistent"(internal, "public"."cube", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_consistent"(internal, "public"."cube", int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/cube', 'g_cube_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_distance"(internal, "public"."cube", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_distance"(internal, "public"."cube", int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/cube', 'g_cube_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/cube', 'g_cube_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/cube', 'g_cube_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_same"("public"."cube", "public"."cube", internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_same"("public"."cube", "public"."cube", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/cube', 'g_cube_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_cube_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_cube_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_cube_union"(internal, internal)
  RETURNS "public"."cube" AS '$libdir/cube', 'g_cube_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."g_int_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_int_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_consistent"(internal, _int4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."g_int_consistent"(internal, _int4, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', 'g_int_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."g_int_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_int_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_int_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_int_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_int_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_int_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_same"(_int4, _int4, internal);
CREATE OR REPLACE FUNCTION "public"."g_int_same"(_int4, _int4, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_int_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_int_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_int_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_int_union"(internal, internal)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'g_int_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_intbig_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_consistent"(internal, _int4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_consistent"(internal, _int4, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', 'g_intbig_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_intbig_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_intbig_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_intbig_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_same"("public"."intbig_gkey", "public"."intbig_gkey", internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_same"("public"."intbig_gkey", "public"."intbig_gkey", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'g_intbig_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for g_intbig_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."g_intbig_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."g_intbig_union"(internal, internal)
  RETURNS "public"."intbig_gkey" AS '$libdir/_int', 'g_intbig_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bit_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_consistent"(internal, bit, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_consistent"(internal, bit, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_bit_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bit_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bit_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bit_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bit_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bit_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bit_union"(internal, internal)
  RETURNS "public"."gbtreekey_var" AS '$libdir/btree_gist', 'gbt_bit_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bpchar_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bpchar_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bpchar_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bpchar_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bpchar_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bpchar_consistent"(internal, bpchar, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bpchar_consistent"(internal, bpchar, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_bpchar_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bytea_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_consistent"(internal, bytea, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_consistent"(internal, bytea, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_bytea_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bytea_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bytea_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_bytea_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_bytea_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_bytea_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_bytea_union"(internal, internal)
  RETURNS "public"."gbtreekey_var" AS '$libdir/btree_gist', 'gbt_bytea_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_cash_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_consistent"(internal, money, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_consistent"(internal, money, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_cash_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_distance"(internal, money, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_distance"(internal, money, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_cash_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_cash_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_cash_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_cash_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_cash_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_cash_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_cash_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_cash_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_cash_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_date_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_consistent"(internal, date, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_consistent"(internal, date, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_date_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_distance"(internal, date, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_distance"(internal, date, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_date_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_date_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_date_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_date_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_same"("public"."gbtreekey8", "public"."gbtreekey8", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_same"("public"."gbtreekey8", "public"."gbtreekey8", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_date_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_date_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_date_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_date_union"(internal, internal)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbt_date_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_enum_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_consistent"(internal, anyenum, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_consistent"(internal, anyenum, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_enum_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_enum_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_enum_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_enum_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_same"("public"."gbtreekey8", "public"."gbtreekey8", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_same"("public"."gbtreekey8", "public"."gbtreekey8", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_enum_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_enum_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_enum_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_enum_union"(internal, internal)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbt_enum_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float4_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_consistent"(internal, float4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_consistent"(internal, float4, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_float4_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_distance"(internal, float4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_distance"(internal, float4, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_float4_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float4_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float4_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float4_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_same"("public"."gbtreekey8", "public"."gbtreekey8", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_same"("public"."gbtreekey8", "public"."gbtreekey8", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float4_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float4_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float4_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float4_union"(internal, internal)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbt_float4_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float8_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_consistent"(internal, float8, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_consistent"(internal, float8, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_float8_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_distance"(internal, float8, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_distance"(internal, float8, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_float8_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float8_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float8_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float8_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_float8_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_float8_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_float8_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_float8_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_float8_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_inet_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_consistent"(internal, inet, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_consistent"(internal, inet, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_inet_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_inet_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_inet_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_inet_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_inet_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_inet_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_inet_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_inet_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int2_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_consistent"(internal, int2, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_consistent"(internal, int2, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_int2_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_distance"(internal, int2, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_distance"(internal, int2, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_int2_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int2_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int2_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int2_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_same"("public"."gbtreekey4", "public"."gbtreekey4", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_same"("public"."gbtreekey4", "public"."gbtreekey4", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int2_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int2_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int2_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int2_union"(internal, internal)
  RETURNS "public"."gbtreekey4" AS '$libdir/btree_gist', 'gbt_int2_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int4_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_consistent"(internal, int4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_consistent"(internal, int4, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_int4_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_distance"(internal, int4, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_distance"(internal, int4, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_int4_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int4_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int4_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int4_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_same"("public"."gbtreekey8", "public"."gbtreekey8", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_same"("public"."gbtreekey8", "public"."gbtreekey8", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int4_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int4_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int4_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int4_union"(internal, internal)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbt_int4_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int8_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_consistent"(internal, int8, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_consistent"(internal, int8, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_int8_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_distance"(internal, int8, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_distance"(internal, int8, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_int8_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int8_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int8_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int8_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_int8_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_int8_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_int8_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_int8_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_int8_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_consistent"(internal, interval, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_consistent"(internal, interval, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_intv_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_distance"(internal, interval, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_distance"(internal, interval, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_intv_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_same"("public"."gbtreekey32", "public"."gbtreekey32", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_same"("public"."gbtreekey32", "public"."gbtreekey32", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_intv_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_intv_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_intv_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_intv_union"(internal, internal)
  RETURNS "public"."gbtreekey32" AS '$libdir/btree_gist', 'gbt_intv_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad8_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_consistent"(internal, macaddr8, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_consistent"(internal, macaddr8, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_macad8_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad8_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad8_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad8_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad8_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad8_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad8_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad8_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_macad8_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_consistent"(internal, macaddr, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_consistent"(internal, macaddr, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_macad_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_macad_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_macad_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_macad_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_macad_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_macad_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_numeric_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_consistent"(internal, numeric, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_consistent"(internal, numeric, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_numeric_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_numeric_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_numeric_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_numeric_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_numeric_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_numeric_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_numeric_union"(internal, internal)
  RETURNS "public"."gbtreekey_var" AS '$libdir/btree_gist', 'gbt_numeric_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_oid_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_consistent"(internal, oid, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_consistent"(internal, oid, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_oid_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_distance"(internal, oid, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_distance"(internal, oid, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_oid_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_oid_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_oid_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_oid_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_same"("public"."gbtreekey8", "public"."gbtreekey8", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_same"("public"."gbtreekey8", "public"."gbtreekey8", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_oid_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_oid_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_oid_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_oid_union"(internal, internal)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbt_oid_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_text_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_consistent"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_consistent"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_text_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_text_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_text_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_same"("public"."gbtreekey_var", "public"."gbtreekey_var", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_text_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_text_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_text_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_text_union"(internal, internal)
  RETURNS "public"."gbtreekey_var" AS '$libdir/btree_gist', 'gbt_text_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_time_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_consistent"(internal, time, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_consistent"(internal, time, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_time_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_distance"(internal, time, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_distance"(internal, time, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_time_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_time_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_time_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_time_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_time_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_time_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_time_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_time_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_time_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_timetz_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_timetz_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_timetz_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_timetz_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_timetz_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_timetz_consistent"(internal, timetz, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_timetz_consistent"(internal, timetz, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_timetz_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_ts_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_consistent"(internal, timestamp, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_consistent"(internal, timestamp, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_ts_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_distance"(internal, timestamp, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_distance"(internal, timestamp, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_ts_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_ts_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_ts_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_ts_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_same"("public"."gbtreekey16", "public"."gbtreekey16", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_same"("public"."gbtreekey16", "public"."gbtreekey16", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_ts_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_ts_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_ts_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_ts_union"(internal, internal)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbt_ts_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_tstz_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_tstz_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_tstz_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_tstz_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_tstz_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_tstz_consistent"(internal, timestamptz, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_tstz_consistent"(internal, timestamptz, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_tstz_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_tstz_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_tstz_distance"(internal, timestamptz, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_tstz_distance"(internal, timestamptz, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/btree_gist', 'gbt_tstz_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_uuid_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_consistent"(internal, uuid, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_consistent"(internal, uuid, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gist', 'gbt_uuid_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_uuid_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_uuid_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_uuid_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_same"("public"."gbtreekey32", "public"."gbtreekey32", internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_same"("public"."gbtreekey32", "public"."gbtreekey32", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_uuid_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_uuid_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_uuid_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gbt_uuid_union"(internal, internal)
  RETURNS "public"."gbtreekey32" AS '$libdir/btree_gist', 'gbt_uuid_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_var_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_var_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_var_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_var_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbt_var_fetch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbt_var_fetch"(internal);
CREATE OR REPLACE FUNCTION "public"."gbt_var_fetch"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gist', 'gbt_var_fetch'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey16_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey16_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gbtreekey16_in"(cstring)
  RETURNS "public"."gbtreekey16" AS '$libdir/btree_gist', 'gbtreekey_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey16_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey16_out"("public"."gbtreekey16");
CREATE OR REPLACE FUNCTION "public"."gbtreekey16_out"("public"."gbtreekey16")
  RETURNS "pg_catalog"."cstring" AS '$libdir/btree_gist', 'gbtreekey_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey32_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey32_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gbtreekey32_in"(cstring)
  RETURNS "public"."gbtreekey32" AS '$libdir/btree_gist', 'gbtreekey_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey32_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey32_out"("public"."gbtreekey32");
CREATE OR REPLACE FUNCTION "public"."gbtreekey32_out"("public"."gbtreekey32")
  RETURNS "pg_catalog"."cstring" AS '$libdir/btree_gist', 'gbtreekey_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey4_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey4_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gbtreekey4_in"(cstring)
  RETURNS "public"."gbtreekey4" AS '$libdir/btree_gist', 'gbtreekey_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey4_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey4_out"("public"."gbtreekey4");
CREATE OR REPLACE FUNCTION "public"."gbtreekey4_out"("public"."gbtreekey4")
  RETURNS "pg_catalog"."cstring" AS '$libdir/btree_gist', 'gbtreekey_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey8_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey8_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gbtreekey8_in"(cstring)
  RETURNS "public"."gbtreekey8" AS '$libdir/btree_gist', 'gbtreekey_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey8_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey8_out"("public"."gbtreekey8");
CREATE OR REPLACE FUNCTION "public"."gbtreekey8_out"("public"."gbtreekey8")
  RETURNS "pg_catalog"."cstring" AS '$libdir/btree_gist', 'gbtreekey_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey_var_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey_var_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gbtreekey_var_in"(cstring)
  RETURNS "public"."gbtreekey_var" AS '$libdir/btree_gist', 'gbtreekey_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gbtreekey_var_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gbtreekey_var_out"("public"."gbtreekey_var");
CREATE OR REPLACE FUNCTION "public"."gbtreekey_var_out"("public"."gbtreekey_var")
  RETURNS "pg_catalog"."cstring" AS '$libdir/btree_gist', 'gbtreekey_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gc_to_sec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gc_to_sec"(float8);
CREATE OR REPLACE FUNCTION "public"."gc_to_sec"(float8)
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT CASE WHEN $1 < 0 THEN 0::float8 WHEN $1/earth() > pi() THEN 2*earth() ELSE 2*earth()*sin($1/(2*earth())) END$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for gen_random_bytes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_bytes"(int4);
CREATE OR REPLACE FUNCTION "public"."gen_random_bytes"(int4)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_random_bytes'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_random_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_uuid"();
CREATE OR REPLACE FUNCTION "public"."gen_random_uuid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/pgcrypto', 'pg_random_uuid'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text);
CREATE OR REPLACE FUNCTION "public"."gen_salt"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text, int4);
CREATE OR REPLACE FUNCTION "public"."gen_salt"(text, int4)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt_rounds'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for geo_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."geo_distance"(point, point);
CREATE OR REPLACE FUNCTION "public"."geo_distance"(point, point)
  RETURNS "pg_catalog"."float8" AS '$libdir/earthdistance', 'geo_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_consistent"(internal, "public"."hstore", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_consistent"(internal, "public"."hstore", int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'ghstore_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."ghstore_in"(cstring)
  RETURNS "public"."ghstore" AS '$libdir/hstore', 'ghstore_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_out"("public"."ghstore");
CREATE OR REPLACE FUNCTION "public"."ghstore_out"("public"."ghstore")
  RETURNS "pg_catalog"."cstring" AS '$libdir/hstore', 'ghstore_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_same"("public"."ghstore", "public"."ghstore", internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_same"("public"."ghstore", "public"."ghstore", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'ghstore_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ghstore_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ghstore_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ghstore_union"(internal, internal)
  RETURNS "public"."ghstore" AS '$libdir/hstore', 'ghstore_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_btree_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_btree_consistent"(internal, int2, anyelement, int4, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_btree_consistent"(internal, int2, anyelement, int4, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/btree_gin', 'gin_btree_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_anyenum"(anyenum, anyenum, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_anyenum"(anyenum, anyenum, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bit"(bit, bit, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bit"(bit, bit, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bool"(bool, bool, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bool"(bool, bool, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bpchar"(bpchar, bpchar, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bpchar"(bpchar, bpchar, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_bytea"(bytea, bytea, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_bytea"(bytea, bytea, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_char"(char, char, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_char"(char, char, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_cidr"(cidr, cidr, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_cidr"(cidr, cidr, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_date"(date, date, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_date"(date, date, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_float4"(float4, float4, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_float4"(float4, float4, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_float8"(float8, float8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_float8"(float8, float8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_inet"(inet, inet, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_inet"(inet, inet, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int2"(int2, int2, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int2"(int2, int2, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int4"(int4, int4, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int4"(int4, int4, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_int8"(int8, int8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_int8"(int8, int8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_interval"(interval, interval, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_interval"(interval, interval, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_macaddr"(macaddr, macaddr, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_macaddr"(macaddr, macaddr, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_macaddr8"(macaddr8, macaddr8, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_macaddr8"(macaddr8, macaddr8, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_money"(money, money, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_money"(money, money, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_name"(name, name, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_name"(name, name, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_numeric"(numeric, numeric, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_numeric"(numeric, numeric, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_oid"(oid, oid, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_oid"(oid, oid, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_text"(text, text, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_text"(text, text, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_time"(time, time, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_time"(time, time, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timestamp"(timestamp, timestamp, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timestamp"(timestamp, timestamp, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timestamptz"(timestamptz, timestamptz, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timestamptz"(timestamptz, timestamptz, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_timetz"(timetz, timetz, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_timetz"(timetz, timetz, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_uuid"(uuid, uuid, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_uuid"(uuid, uuid, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_compare_prefix_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_compare_prefix_varbit"(varbit, varbit, int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_compare_prefix_varbit"(varbit, varbit, int2, internal)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_compare_prefix_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_consistent_hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_consistent_hstore"(internal, int2, "public"."hstore", int4, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_consistent_hstore"(internal, int2, "public"."hstore", int4, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'gin_consistent_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_enum_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_enum_cmp"(anyenum, anyenum);
CREATE OR REPLACE FUNCTION "public"."gin_enum_cmp"(anyenum, anyenum)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_enum_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_hstore"("public"."hstore", internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_hstore"("public"."hstore", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'gin_extract_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_hstore_query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_hstore_query"("public"."hstore", internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_hstore_query"("public"."hstore", internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/hstore', 'gin_extract_hstore_query'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_anyenum"(anyenum, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_anyenum"(anyenum, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bit"(bit, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bit"(bit, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bool"(bool, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bool"(bool, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bpchar"(bpchar, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bpchar"(bpchar, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_bytea"(bytea, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_bytea"(bytea, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_char"(char, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_char"(char, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_cidr"(cidr, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_cidr"(cidr, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_date"(date, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_date"(date, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_float4"(float4, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_float4"(float4, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_float8"(float8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_float8"(float8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_inet"(inet, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_inet"(inet, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int2"(int2, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int2"(int2, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int4"(int4, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int4"(int4, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_int8"(int8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_int8"(int8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_interval"(interval, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_interval"(interval, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_macaddr"(macaddr, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_macaddr"(macaddr, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_macaddr8"(macaddr8, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_macaddr8"(macaddr8, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_money"(money, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_money"(money, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_name"(name, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_name"(name, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_numeric"(numeric, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_numeric"(numeric, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_oid"(oid, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_oid"(oid, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_text"(text, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_text"(text, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_time"(time, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_time"(time, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timestamp"(timestamp, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timestamp"(timestamp, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timestamptz"(timestamptz, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timestamptz"(timestamptz, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_timetz"(timetz, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_timetz"(timetz, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_query_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_uuid"(uuid, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_uuid"(uuid, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_query_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_varbit"(varbit, internal, int2, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_varbit"(varbit, internal, int2, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_query_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_anyenum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_anyenum"(anyenum, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_anyenum"(anyenum, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_anyenum'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_bit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bit"(bit, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bit"(bit, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bool"(bool, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bool"(bool, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_bpchar
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bpchar"(bpchar, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bpchar"(bpchar, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bpchar'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_bytea"(bytea, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_bytea"(bytea, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_char
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_char"(char, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_char"(char, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_char'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_cidr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_cidr"(cidr, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_cidr"(cidr, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_cidr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_date
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_date"(date, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_date"(date, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_date'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_float4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_float4"(float4, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_float4"(float4, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_float4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_float8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_float8"(float8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_float8"(float8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_float8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_inet
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_inet"(inet, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_inet"(inet, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_inet'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_int2
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int2"(int2, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int2"(int2, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int2'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_int4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int4"(int4, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int4"(int4, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int4'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_int8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_int8"(int8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_int8"(int8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_int8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_interval
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_interval"(interval, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_interval"(interval, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_interval'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_macaddr
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_macaddr"(macaddr, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_macaddr"(macaddr, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_macaddr'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_macaddr8
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_macaddr8"(macaddr8, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_macaddr8"(macaddr8, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_macaddr8'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_money
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_money"(money, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_money"(money, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_money'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_name"(name, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_name"(name, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_name'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_numeric
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_numeric"(numeric, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_numeric"(numeric, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_numeric'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_oid"(oid, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_oid"(oid, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_text"(text, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_text"(text, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_time
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_time"(time, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_time"(time, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_time'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_timestamp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timestamp"(timestamp, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timestamp"(timestamp, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timestamp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_timestamptz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timestamptz"(timestamptz, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timestamptz"(timestamptz, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timestamptz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_timetz
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_timetz"(timetz, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_timetz"(timetz, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_timetz'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_trgm"(text, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_trgm"(text, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_value_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_uuid"(uuid, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_uuid"(uuid, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_uuid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_varbit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_varbit"(varbit, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_varbit"(varbit, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/btree_gin', 'gin_extract_value_varbit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_numeric_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_numeric_cmp"(numeric, numeric);
CREATE OR REPLACE FUNCTION "public"."gin_numeric_cmp"(numeric, numeric)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gin', 'gin_numeric_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_trgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gin_trgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_trgm_triconsistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal)
  RETURNS "pg_catalog"."char" AS '$libdir/pg_trgm', 'gin_trgm_triconsistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ginint4_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ginint4_consistent"(internal, int2, _int4, int4, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."ginint4_consistent"(internal, int2, _int4, int4, internal, internal, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', 'ginint4_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ginint4_queryextract
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ginint4_queryextract"(_int4, internal, int2, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."ginint4_queryextract"(_int4, internal, int2, internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/_int', 'ginint4_queryextract'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_consistent"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_consistent"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gtrgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_distance"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_distance"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/pg_trgm', 'gtrgm_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gtrgm_in"(cstring)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_out"("public"."gtrgm");
CREATE OR REPLACE FUNCTION "public"."gtrgm_out"("public"."gtrgm")
  RETURNS "pg_catalog"."cstring" AS '$libdir/pg_trgm', 'gtrgm_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_union"(internal, internal)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."hmac"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."hmac"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hs_concat
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_concat"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_concat"("public"."hstore", "public"."hstore")
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_concat'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hs_contained
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_contained"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_contained"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_contained'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hs_contains
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hs_contains"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hs_contains"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_contains'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(_text, _text);
CREATE OR REPLACE FUNCTION "public"."hstore"(_text, _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_arrays'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(record);
CREATE OR REPLACE FUNCTION "public"."hstore"(record)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_record'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(text, text);
CREATE OR REPLACE FUNCTION "public"."hstore"(text, text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_text'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for hstore
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore"(_text);
CREATE OR REPLACE FUNCTION "public"."hstore"(_text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_cmp"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_cmp"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_eq"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_eq"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_eq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_ge"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_ge"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_gt"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_gt"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_hash
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_hash"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_hash"("public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_hash'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."hstore_in"(cstring)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_le"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_le"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_lt"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_lt"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_ne"("public"."hstore", "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_ne"("public"."hstore", "public"."hstore")
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_ne'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_out"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_out"("public"."hstore")
  RETURNS "pg_catalog"."cstring" AS '$libdir/hstore', 'hstore_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_recv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_recv"(internal);
CREATE OR REPLACE FUNCTION "public"."hstore_recv"(internal)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_recv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_send
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_send"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_send"("public"."hstore")
  RETURNS "pg_catalog"."bytea" AS '$libdir/hstore', 'hstore_send'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_array"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_array"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_to_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_json
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_json"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_json"("public"."hstore")
  RETURNS "pg_catalog"."json" AS '$libdir/hstore', 'hstore_to_json'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_json_loose
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_json_loose"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_json_loose"("public"."hstore")
  RETURNS "pg_catalog"."json" AS '$libdir/hstore', 'hstore_to_json_loose'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_jsonb
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_jsonb"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_jsonb"("public"."hstore")
  RETURNS "pg_catalog"."jsonb" AS '$libdir/hstore', 'hstore_to_jsonb'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_jsonb_loose
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_jsonb_loose"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_jsonb_loose"("public"."hstore")
  RETURNS "pg_catalog"."jsonb" AS '$libdir/hstore', 'hstore_to_jsonb_loose'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_to_matrix
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_to_matrix"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_to_matrix"("public"."hstore")
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_to_matrix'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hstore_version_diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hstore_version_diag"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."hstore_version_diag"("public"."hstore")
  RETURNS "pg_catalog"."int4" AS '$libdir/hstore', 'hstore_version_diag'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for icount
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."icount"(_int4);
CREATE OR REPLACE FUNCTION "public"."icount"(_int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/_int', 'icount'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for idx
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."idx"(_int4, int4);
CREATE OR REPLACE FUNCTION "public"."idx"(_int4, int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/_int', 'idx'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."index"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."int4" AS '$libdir/ltree', 'ltree_index'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index"("public"."ltree", "public"."ltree", int4);
CREATE OR REPLACE FUNCTION "public"."index"("public"."ltree", "public"."ltree", int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/ltree', 'ltree_index'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for int2_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."int2_dist"(int2, int2);
CREATE OR REPLACE FUNCTION "public"."int2_dist"(int2, int2)
  RETURNS "pg_catalog"."int2" AS '$libdir/btree_gist', 'int2_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for int4_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."int4_dist"(int4, int4);
CREATE OR REPLACE FUNCTION "public"."int4_dist"(int4, int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/btree_gist', 'int4_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for int8_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."int8_dist"(int8, int8);
CREATE OR REPLACE FUNCTION "public"."int8_dist"(int8, int8)
  RETURNS "pg_catalog"."int8" AS '$libdir/btree_gist', 'int8_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intarray_del_elem
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intarray_del_elem"(_int4, int4);
CREATE OR REPLACE FUNCTION "public"."intarray_del_elem"(_int4, int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intarray_del_elem'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intarray_push_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intarray_push_array"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."intarray_push_array"(_int4, _int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intarray_push_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intarray_push_elem
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intarray_push_elem"(_int4, int4);
CREATE OR REPLACE FUNCTION "public"."intarray_push_elem"(_int4, int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intarray_push_elem'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for interval_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."interval_dist"(interval, interval);
CREATE OR REPLACE FUNCTION "public"."interval_dist"(interval, interval)
  RETURNS "pg_catalog"."interval" AS '$libdir/btree_gist', 'interval_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intset"(int4);
CREATE OR REPLACE FUNCTION "public"."intset"(int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intset'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intset_subtract
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intset_subtract"(_int4, _int4);
CREATE OR REPLACE FUNCTION "public"."intset_subtract"(_int4, _int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intset_subtract'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for intset_union_elem
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."intset_union_elem"(_int4, int4);
CREATE OR REPLACE FUNCTION "public"."intset_union_elem"(_int4, int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'intset_union_elem'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for isdefined
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isdefined"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."isdefined"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_defined'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for isexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isexists"("public"."hstore", text);
CREATE OR REPLACE FUNCTION "public"."isexists"("public"."hstore", text)
  RETURNS "pg_catalog"."bool" AS '$libdir/hstore', 'hstore_exists'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for latitude
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."latitude"("public"."earth");
CREATE OR REPLACE FUNCTION "public"."latitude"("public"."earth")
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT CASE WHEN cube_ll_coord($1, 3)/earth() < -1 THEN -90::float8 WHEN cube_ll_coord($1, 3)/earth() > 1 THEN 90::float8 ELSE degrees(asin(cube_ll_coord($1, 3)/earth())) END$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."_ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."_ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', '_lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lca
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lca"("public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'lca'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for levenshtein
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."levenshtein"(text, text);
CREATE OR REPLACE FUNCTION "public"."levenshtein"(text, text)
  RETURNS "pg_catalog"."int4" AS '$libdir/fuzzystrmatch', 'levenshtein'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for levenshtein
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."levenshtein"(text, text, int4, int4, int4);
CREATE OR REPLACE FUNCTION "public"."levenshtein"(text, text, int4, int4, int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/fuzzystrmatch', 'levenshtein_with_costs'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for levenshtein_less_equal
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."levenshtein_less_equal"(text, text, int4);
CREATE OR REPLACE FUNCTION "public"."levenshtein_less_equal"(text, text, int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/fuzzystrmatch', 'levenshtein_less_equal'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for levenshtein_less_equal
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."levenshtein_less_equal"(text, text, int4, int4, int4, int4);
CREATE OR REPLACE FUNCTION "public"."levenshtein_less_equal"(text, text, int4, int4, int4, int4)
  RETURNS "pg_catalog"."int4" AS '$libdir/fuzzystrmatch', 'levenshtein_less_equal_with_costs'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ll_to_earth
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ll_to_earth"(float8, float8);
CREATE OR REPLACE FUNCTION "public"."ll_to_earth"(float8, float8)
  RETURNS "public"."earth" AS $BODY$SELECT cube(cube(cube(earth()*cos(radians($1))*cos(radians($2))),earth()*cos(radians($1))*sin(radians($2))),earth()*sin(radians($1)))::earth$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for longitude
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."longitude"("public"."earth");
CREATE OR REPLACE FUNCTION "public"."longitude"("public"."earth")
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT degrees(atan2(cube_ll_coord($1, 2), cube_ll_coord($1, 1)))$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for lquery_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lquery_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."lquery_in"(cstring)
  RETURNS "public"."lquery" AS '$libdir/ltree', 'lquery_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lquery_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lquery_out"("public"."lquery");
CREATE OR REPLACE FUNCTION "public"."lquery_out"("public"."lquery")
  RETURNS "pg_catalog"."cstring" AS '$libdir/ltree', 'lquery_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lt_q_regex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lt_q_regex"("public"."ltree", "public"."_lquery");
CREATE OR REPLACE FUNCTION "public"."lt_q_regex"("public"."ltree", "public"."_lquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'lt_q_regex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for lt_q_rregex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lt_q_rregex"("public"."_lquery", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."lt_q_rregex"("public"."_lquery", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'lt_q_rregex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltq_regex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltq_regex"("public"."ltree", "public"."lquery");
CREATE OR REPLACE FUNCTION "public"."ltq_regex"("public"."ltree", "public"."lquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltq_regex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltq_rregex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltq_rregex"("public"."lquery", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltq_rregex"("public"."lquery", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltq_rregex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree2text
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree2text"("public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree2text"("public"."ltree")
  RETURNS "pg_catalog"."text" AS '$libdir/ltree', 'ltree2text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_addltree
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_addltree"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_addltree"("public"."ltree", "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'ltree_addltree'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_addtext
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_addtext"("public"."ltree", text);
CREATE OR REPLACE FUNCTION "public"."ltree_addtext"("public"."ltree", text)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'ltree_addtext'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_cmp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_cmp"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_cmp"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."int4" AS '$libdir/ltree', 'ltree_cmp'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."ltree_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', 'ltree_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_consistent"(internal, "public"."ltree", int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."ltree_consistent"(internal, "public"."ltree", int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."ltree_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', 'ltree_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_eq"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_eq"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_eq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_ge
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_ge"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_ge"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_ge'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_gist_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_gist_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."ltree_gist_in"(cstring)
  RETURNS "public"."ltree_gist" AS '$libdir/ltree', 'ltree_gist_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_gist_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_gist_out"("public"."ltree_gist");
CREATE OR REPLACE FUNCTION "public"."ltree_gist_out"("public"."ltree_gist")
  RETURNS "pg_catalog"."cstring" AS '$libdir/ltree', 'ltree_gist_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_gt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_gt"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_gt"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_gt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."ltree_in"(cstring)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'ltree_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_isparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_isparent"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_isparent"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_isparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_le
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_le"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_le"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_le'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_lt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_lt"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_lt"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_lt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_ne"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_ne"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_ne'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_out"("public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_out"("public"."ltree")
  RETURNS "pg_catalog"."cstring" AS '$libdir/ltree', 'ltree_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."ltree_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', 'ltree_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ltree_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', 'ltree_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_risparent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_risparent"("public"."ltree", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_risparent"("public"."ltree", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltree_risparent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_same"("public"."ltree_gist", "public"."ltree_gist", internal);
CREATE OR REPLACE FUNCTION "public"."ltree_same"("public"."ltree_gist", "public"."ltree_gist", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/ltree', 'ltree_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_textadd
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_textadd"(text, "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltree_textadd"(text, "public"."ltree")
  RETURNS "public"."ltree" AS '$libdir/ltree', 'ltree_textadd'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltree_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltree_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."ltree_union"(internal, internal)
  RETURNS "public"."ltree_gist" AS '$libdir/ltree', 'ltree_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltreeparentsel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltreeparentsel"(internal, oid, internal, int4);
CREATE OR REPLACE FUNCTION "public"."ltreeparentsel"(internal, oid, internal, int4)
  RETURNS "pg_catalog"."float8" AS '$libdir/ltree', 'ltreeparentsel'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltxtq_exec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltxtq_exec"("public"."ltree", "public"."ltxtquery");
CREATE OR REPLACE FUNCTION "public"."ltxtq_exec"("public"."ltree", "public"."ltxtquery")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltxtq_exec'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltxtq_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltxtq_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."ltxtq_in"(cstring)
  RETURNS "public"."ltxtquery" AS '$libdir/ltree', 'ltxtq_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltxtq_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltxtq_out"("public"."ltxtquery");
CREATE OR REPLACE FUNCTION "public"."ltxtq_out"("public"."ltxtquery")
  RETURNS "pg_catalog"."cstring" AS '$libdir/ltree', 'ltxtq_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ltxtq_rexec
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ltxtq_rexec"("public"."ltxtquery", "public"."ltree");
CREATE OR REPLACE FUNCTION "public"."ltxtq_rexec"("public"."ltxtquery", "public"."ltree")
  RETURNS "pg_catalog"."bool" AS '$libdir/ltree', 'ltxtq_rexec'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for metaphone
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."metaphone"(text, int4);
CREATE OR REPLACE FUNCTION "public"."metaphone"(text, int4)
  RETURNS "pg_catalog"."text" AS '$libdir/fuzzystrmatch', 'metaphone'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for nlevel
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."nlevel"("public"."ltree");
CREATE OR REPLACE FUNCTION "public"."nlevel"("public"."ltree")
  RETURNS "pg_catalog"."int4" AS '$libdir/ltree', 'nlevel'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for normal_rand
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."normal_rand"(int4, float8, float8);
CREATE OR REPLACE FUNCTION "public"."normal_rand"(int4, float8, float8)
  RETURNS SETOF "pg_catalog"."float8" AS '$libdir/tablefunc', 'normal_rand'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for oid_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."oid_dist"(oid, oid);
CREATE OR REPLACE FUNCTION "public"."oid_dist"(oid, oid)
  RETURNS "pg_catalog"."oid" AS '$libdir/btree_gist', 'oid_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pg_relpages
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_relpages"("relname" regclass);
CREATE OR REPLACE FUNCTION "public"."pg_relpages"("relname" regclass)
  RETURNS "pg_catalog"."int8" AS '$libdir/pgstattuple', 'pg_relpagesbyid_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pg_relpages
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_relpages"("relname" text);
CREATE OR REPLACE FUNCTION "public"."pg_relpages"("relname" text)
  RETURNS "pg_catalog"."int8" AS '$libdir/pgstattuple', 'pg_relpages_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pg_stat_statements
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_stat_statements"("showtext" bool, OUT "userid" oid, OUT "dbid" oid, OUT "queryid" int8, OUT "query" text, OUT "calls" int8, OUT "total_time" float8, OUT "min_time" float8, OUT "max_time" float8, OUT "mean_time" float8, OUT "stddev_time" float8, OUT "rows" int8, OUT "shared_blks_hit" int8, OUT "shared_blks_read" int8, OUT "shared_blks_dirtied" int8, OUT "shared_blks_written" int8, OUT "local_blks_hit" int8, OUT "local_blks_read" int8, OUT "local_blks_dirtied" int8, OUT "local_blks_written" int8, OUT "temp_blks_read" int8, OUT "temp_blks_written" int8, OUT "blk_read_time" float8, OUT "blk_write_time" float8);
CREATE OR REPLACE FUNCTION "public"."pg_stat_statements"(IN "showtext" bool, OUT "userid" oid, OUT "dbid" oid, OUT "queryid" int8, OUT "query" text, OUT "calls" int8, OUT "total_time" float8, OUT "min_time" float8, OUT "max_time" float8, OUT "mean_time" float8, OUT "stddev_time" float8, OUT "rows" int8, OUT "shared_blks_hit" int8, OUT "shared_blks_read" int8, OUT "shared_blks_dirtied" int8, OUT "shared_blks_written" int8, OUT "local_blks_hit" int8, OUT "local_blks_read" int8, OUT "local_blks_dirtied" int8, OUT "local_blks_written" int8, OUT "temp_blks_read" int8, OUT "temp_blks_written" int8, OUT "blk_read_time" float8, OUT "blk_write_time" float8)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pg_stat_statements', 'pg_stat_statements_1_3'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for pg_stat_statements_reset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_stat_statements_reset"();
CREATE OR REPLACE FUNCTION "public"."pg_stat_statements_reset"()
  RETURNS "pg_catalog"."void" AS '$libdir/pg_stat_statements', 'pg_stat_statements_reset'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for pgp_armor_headers
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_armor_headers"(text, OUT "key" text, OUT "value" text);
CREATE OR REPLACE FUNCTION "public"."pgp_armor_headers"(IN text, OUT "key" text, OUT "value" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pgcrypto', 'pgp_armor_headers'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for pgp_key_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_key_id"(bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_key_id"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_key_id_w'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt"(text, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt"(text, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt"(bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt"(bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgrowlocks
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgrowlocks"("relname" text, OUT "locked_row" tid, OUT "locker" xid, OUT "multi" bool, OUT "xids" _xid, OUT "modes" _text, OUT "pids" _int4);
CREATE OR REPLACE FUNCTION "public"."pgrowlocks"(IN "relname" text, OUT "locked_row" tid, OUT "locker" xid, OUT "multi" bool, OUT "xids" _xid, OUT "modes" _text, OUT "pids" _int4)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pgrowlocks', 'pgrowlocks'
  LANGUAGE c VOLATILE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for pgstatginindex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstatginindex"("relname" regclass, OUT "version" int4, OUT "pending_pages" int4, OUT "pending_tuples" int8);
CREATE OR REPLACE FUNCTION "public"."pgstatginindex"(IN "relname" regclass, OUT "version" int4, OUT "pending_pages" int4, OUT "pending_tuples" int8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstatginindex_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstathashindex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstathashindex"("relname" regclass, OUT "version" int4, OUT "bucket_pages" int8, OUT "overflow_pages" int8, OUT "bitmap_pages" int8, OUT "unused_pages" int8, OUT "live_items" int8, OUT "dead_items" int8, OUT "free_percent" float8);
CREATE OR REPLACE FUNCTION "public"."pgstathashindex"(IN "relname" regclass, OUT "version" int4, OUT "bucket_pages" int8, OUT "overflow_pages" int8, OUT "bitmap_pages" int8, OUT "unused_pages" int8, OUT "live_items" int8, OUT "dead_items" int8, OUT "free_percent" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstathashindex'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstatindex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstatindex"("relname" text, OUT "version" int4, OUT "tree_level" int4, OUT "index_size" int8, OUT "root_block_no" int8, OUT "internal_pages" int8, OUT "leaf_pages" int8, OUT "empty_pages" int8, OUT "deleted_pages" int8, OUT "avg_leaf_density" float8, OUT "leaf_fragmentation" float8);
CREATE OR REPLACE FUNCTION "public"."pgstatindex"(IN "relname" text, OUT "version" int4, OUT "tree_level" int4, OUT "index_size" int8, OUT "root_block_no" int8, OUT "internal_pages" int8, OUT "leaf_pages" int8, OUT "empty_pages" int8, OUT "deleted_pages" int8, OUT "avg_leaf_density" float8, OUT "leaf_fragmentation" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstatindex_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstatindex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstatindex"("relname" regclass, OUT "version" int4, OUT "tree_level" int4, OUT "index_size" int8, OUT "root_block_no" int8, OUT "internal_pages" int8, OUT "leaf_pages" int8, OUT "empty_pages" int8, OUT "deleted_pages" int8, OUT "avg_leaf_density" float8, OUT "leaf_fragmentation" float8);
CREATE OR REPLACE FUNCTION "public"."pgstatindex"(IN "relname" regclass, OUT "version" int4, OUT "tree_level" int4, OUT "index_size" int8, OUT "root_block_no" int8, OUT "internal_pages" int8, OUT "leaf_pages" int8, OUT "empty_pages" int8, OUT "deleted_pages" int8, OUT "avg_leaf_density" float8, OUT "leaf_fragmentation" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstatindexbyid_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstattuple
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstattuple"("relname" text, OUT "table_len" int8, OUT "tuple_count" int8, OUT "tuple_len" int8, OUT "tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "free_space" int8, OUT "free_percent" float8);
CREATE OR REPLACE FUNCTION "public"."pgstattuple"(IN "relname" text, OUT "table_len" int8, OUT "tuple_count" int8, OUT "tuple_len" int8, OUT "tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "free_space" int8, OUT "free_percent" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstattuple_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstattuple
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstattuple"("reloid" regclass, OUT "table_len" int8, OUT "tuple_count" int8, OUT "tuple_len" int8, OUT "tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "free_space" int8, OUT "free_percent" float8);
CREATE OR REPLACE FUNCTION "public"."pgstattuple"(IN "reloid" regclass, OUT "table_len" int8, OUT "tuple_count" int8, OUT "tuple_len" int8, OUT "tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "free_space" int8, OUT "free_percent" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstattuplebyid_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgstattuple_approx
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgstattuple_approx"("reloid" regclass, OUT "table_len" int8, OUT "scanned_percent" float8, OUT "approx_tuple_count" int8, OUT "approx_tuple_len" int8, OUT "approx_tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "approx_free_space" int8, OUT "approx_free_percent" float8);
CREATE OR REPLACE FUNCTION "public"."pgstattuple_approx"(IN "reloid" regclass, OUT "table_len" int8, OUT "scanned_percent" float8, OUT "approx_tuple_count" int8, OUT "approx_tuple_len" int8, OUT "approx_tuple_percent" float8, OUT "dead_tuple_count" int8, OUT "dead_tuple_len" int8, OUT "dead_tuple_percent" float8, OUT "approx_free_space" int8, OUT "approx_free_percent" float8)
  RETURNS "pg_catalog"."record" AS '$libdir/pgstattuple', 'pgstattuple_approx_v1_5'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for populate_record
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."populate_record"(anyelement, "public"."hstore");
CREATE OR REPLACE FUNCTION "public"."populate_record"(anyelement, "public"."hstore")
  RETURNS "pg_catalog"."anyelement" AS '$libdir/hstore', 'hstore_populate_record'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for querytree
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."querytree"("public"."query_int");
CREATE OR REPLACE FUNCTION "public"."querytree"("public"."query_int")
  RETURNS "pg_catalog"."text" AS '$libdir/_int', 'querytree'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for rboolop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rboolop"("public"."query_int", _int4);
CREATE OR REPLACE FUNCTION "public"."rboolop"("public"."query_int", _int4)
  RETURNS "pg_catalog"."bool" AS '$libdir/_int', 'rboolop'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
COMMENT ON FUNCTION "public"."rboolop"("public"."query_int", _int4) IS 'boolean operation with array';

-- ----------------------------
-- Function structure for regexp_match
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_match"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."regexp_match"("public"."citext", "public"."citext", text)
  RETURNS "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_match( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_match
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_match"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."regexp_match"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_match( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_matches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_matches"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."regexp_matches"("public"."citext", "public"."citext", text)
  RETURNS SETOF "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_matches( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100
  ROWS 10;

-- ----------------------------
-- Function structure for regexp_matches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_matches"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."regexp_matches"("public"."citext", "public"."citext")
  RETURNS SETOF "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_matches( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100
  ROWS 1;

-- ----------------------------
-- Function structure for regexp_replace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_replace"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."regexp_replace"("public"."citext", "public"."citext", text)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, $2::pg_catalog.text, $3, 'i');
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_replace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_replace"("public"."citext", "public"."citext", text, text);
CREATE OR REPLACE FUNCTION "public"."regexp_replace"("public"."citext", "public"."citext", text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, $2::pg_catalog.text, $3, CASE WHEN pg_catalog.strpos($4, 'c') = 0 THEN  $4 || 'i' ELSE $4 END);
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_split_to_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_split_to_array"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."regexp_split_to_array"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_split_to_array( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_split_to_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_split_to_array"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."regexp_split_to_array"("public"."citext", "public"."citext", text)
  RETURNS "pg_catalog"."_text" AS $BODY$
SELECT pg_catalog.regexp_split_to_array( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for regexp_split_to_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_split_to_table"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."regexp_split_to_table"("public"."citext", "public"."citext", text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.regexp_split_to_table( $1::pg_catalog.text, $2::pg_catalog.text, CASE WHEN pg_catalog.strpos($3, 'c') = 0 THEN  $3 || 'i' ELSE $3 END );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for regexp_split_to_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."regexp_split_to_table"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."regexp_split_to_table"("public"."citext", "public"."citext")
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.regexp_split_to_table( $1::pg_catalog.text, $2::pg_catalog.text, 'i' );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for replace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."replace"("public"."citext", "public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."replace"("public"."citext", "public"."citext", "public"."citext")
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.regexp_replace( $1::pg_catalog.text, pg_catalog.regexp_replace($2::pg_catalog.text, '([^a-zA-Z_0-9])', E'\\\\\\1', 'g'), $3::pg_catalog.text, 'gi' );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for sec_to_gc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sec_to_gc"(float8);
CREATE OR REPLACE FUNCTION "public"."sec_to_gc"(float8)
  RETURNS "pg_catalog"."float8" AS $BODY$SELECT CASE WHEN $1 < 0 THEN 0::float8 WHEN $1/(2*earth()) > 1 THEN pi()*earth() ELSE 2*earth()*asin($1/(2*earth())) END$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for set_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_limit"(float4);
CREATE OR REPLACE FUNCTION "public"."set_limit"(float4)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'set_limit'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for show_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_limit"();
CREATE OR REPLACE FUNCTION "public"."show_limit"()
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'show_limit'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for show_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_trgm"(text);
CREATE OR REPLACE FUNCTION "public"."show_trgm"(text)
  RETURNS "pg_catalog"."_text" AS '$libdir/pg_trgm', 'show_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_dist"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_dist"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for skeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skeys"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."skeys"("public"."hstore")
  RETURNS SETOF "pg_catalog"."text" AS '$libdir/hstore', 'hstore_skeys'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for slice
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."slice"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."slice"("public"."hstore", _text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_slice_to_hstore'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for slice_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."slice_array"("public"."hstore", _text);
CREATE OR REPLACE FUNCTION "public"."slice_array"("public"."hstore", _text)
  RETURNS "pg_catalog"."_text" AS '$libdir/hstore', 'hstore_slice_to_array'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for sort
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sort"(_int4);
CREATE OR REPLACE FUNCTION "public"."sort"(_int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'sort'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for sort
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sort"(_int4, text);
CREATE OR REPLACE FUNCTION "public"."sort"(_int4, text)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'sort'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for sort_asc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sort_asc"(_int4);
CREATE OR REPLACE FUNCTION "public"."sort_asc"(_int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'sort_asc'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for sort_desc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sort_desc"(_int4);
CREATE OR REPLACE FUNCTION "public"."sort_desc"(_int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'sort_desc'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for soundex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."soundex"(text);
CREATE OR REPLACE FUNCTION "public"."soundex"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/fuzzystrmatch', 'soundex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for split_part
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."split_part"("public"."citext", "public"."citext", int4);
CREATE OR REPLACE FUNCTION "public"."split_part"("public"."citext", "public"."citext", int4)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT (pg_catalog.regexp_split_to_array( $1::pg_catalog.text, pg_catalog.regexp_replace($2::pg_catalog.text, '([^a-zA-Z_0-9])', E'\\\\\\1', 'g'), 'i'))[$3];
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for strict_word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strpos
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strpos"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."strpos"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."int4" AS $BODY$
SELECT pg_catalog.strpos( pg_catalog.lower( $1::pg_catalog.text ), pg_catalog.lower( $2::pg_catalog.text ) );
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for subarray
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."subarray"(_int4, int4);
CREATE OR REPLACE FUNCTION "public"."subarray"(_int4, int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'subarray'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for subarray
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."subarray"(_int4, int4, int4);
CREATE OR REPLACE FUNCTION "public"."subarray"(_int4, int4, int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'subarray'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for subltree
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."subltree"("public"."ltree", int4, int4);
CREATE OR REPLACE FUNCTION "public"."subltree"("public"."ltree", int4, int4)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'subltree'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for subpath
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."subpath"("public"."ltree", int4);
CREATE OR REPLACE FUNCTION "public"."subpath"("public"."ltree", int4)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'subpath'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for subpath
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."subpath"("public"."ltree", int4, int4);
CREATE OR REPLACE FUNCTION "public"."subpath"("public"."ltree", int4, int4)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'subpath'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for svals
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."svals"("public"."hstore");
CREATE OR REPLACE FUNCTION "public"."svals"("public"."hstore")
  RETURNS SETOF "pg_catalog"."text" AS '$libdir/hstore', 'hstore_svals'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for tconvert
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tconvert"(text, text);
CREATE OR REPLACE FUNCTION "public"."tconvert"(text, text)
  RETURNS "public"."hstore" AS '$libdir/hstore', 'hstore_from_text'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for text2ltree
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."text2ltree"(text);
CREATE OR REPLACE FUNCTION "public"."text2ltree"(text)
  RETURNS "public"."ltree" AS '$libdir/ltree', 'text2ltree'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for text_soundex
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."text_soundex"(text);
CREATE OR REPLACE FUNCTION "public"."text_soundex"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/fuzzystrmatch', 'soundex'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticlike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticlike"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."texticlike"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS $BODY$texticlike$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticlike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticlike"("public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."texticlike"("public"."citext", text)
  RETURNS "pg_catalog"."bool" AS $BODY$texticlike$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticnlike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticnlike"("public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."texticnlike"("public"."citext", text)
  RETURNS "pg_catalog"."bool" AS $BODY$texticnlike$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticnlike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticnlike"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."texticnlike"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS $BODY$texticnlike$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticregexeq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticregexeq"("public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."texticregexeq"("public"."citext", text)
  RETURNS "pg_catalog"."bool" AS $BODY$texticregexeq$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticregexeq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticregexeq"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."texticregexeq"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS $BODY$texticregexeq$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticregexne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticregexne"("public"."citext", "public"."citext");
CREATE OR REPLACE FUNCTION "public"."texticregexne"("public"."citext", "public"."citext")
  RETURNS "pg_catalog"."bool" AS $BODY$texticregexne$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for texticregexne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."texticregexne"("public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."texticregexne"("public"."citext", text)
  RETURNS "pg_catalog"."bool" AS $BODY$texticregexne$BODY$
  LANGUAGE internal IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for time_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."time_dist"(time, time);
CREATE OR REPLACE FUNCTION "public"."time_dist"(time, time)
  RETURNS "pg_catalog"."interval" AS '$libdir/btree_gist', 'time_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for translate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."translate"("public"."citext", "public"."citext", text);
CREATE OR REPLACE FUNCTION "public"."translate"("public"."citext", "public"."citext", text)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT pg_catalog.translate( pg_catalog.translate( $1::pg_catalog.text, pg_catalog.lower($2::pg_catalog.text), $3), pg_catalog.upper($2::pg_catalog.text), $3);
$BODY$
LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for ts_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ts_dist"(timestamp, timestamp);
CREATE OR REPLACE FUNCTION "public"."ts_dist"(timestamp, timestamp)
  RETURNS "pg_catalog"."interval" AS '$libdir/btree_gist', 'ts_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for tstz_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tstz_dist"(timestamptz, timestamptz);
CREATE OR REPLACE FUNCTION "public"."tstz_dist"(timestamptz, timestamptz)
  RETURNS "pg_catalog"."interval" AS '$libdir/btree_gist', 'tstz_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for unaccent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unaccent"(text);
CREATE OR REPLACE FUNCTION "public"."unaccent"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/unaccent', 'unaccent_dict'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for unaccent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unaccent"(regdictionary, text);
CREATE OR REPLACE FUNCTION "public"."unaccent"(regdictionary, text)
  RETURNS "pg_catalog"."text" AS '$libdir/unaccent', 'unaccent_dict'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for unaccent_init
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unaccent_init"(internal);
CREATE OR REPLACE FUNCTION "public"."unaccent_init"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/unaccent', 'unaccent_init'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for unaccent_lexize
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unaccent_lexize"(internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."unaccent_lexize"(internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/unaccent', 'unaccent_lexize'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for uniq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uniq"(_int4);
CREATE OR REPLACE FUNCTION "public"."uniq"(_int4)
  RETURNS "pg_catalog"."_int4" AS '$libdir/_int', 'uniq'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1mc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1mc"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1mc"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v3"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v3"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v3'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v4"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v4"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v5
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v5"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v5"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_nil
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_nil"();
CREATE OR REPLACE FUNCTION "public"."uuid_nil"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_dns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_dns"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_dns"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_oid"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_oid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_url
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_url"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_url"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_x500
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_x500"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_x500"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xml_encode_special_chars
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xml_encode_special_chars"(text);
CREATE OR REPLACE FUNCTION "public"."xml_encode_special_chars"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xml_encode_special_chars'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xml_valid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xml_valid"(text);
CREATE OR REPLACE FUNCTION "public"."xml_valid"(text)
  RETURNS "pg_catalog"."bool" AS $BODY$xml_is_well_formed$BODY$
  LANGUAGE internal STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_bool
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_bool"(text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_bool"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pgxml', 'xpath_bool'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_list
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_list"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_list"(text, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xpath_list'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_list
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_list"(text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_list"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$SELECT xpath_list($1,$2,',')$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for xpath_nodeset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_nodeset"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_nodeset"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$SELECT xpath_nodeset($1,$2,'',$3)$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for xpath_nodeset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_nodeset"(text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_nodeset"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$SELECT xpath_nodeset($1,$2,'','')$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for xpath_nodeset
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_nodeset"(text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_nodeset"(text, text, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xpath_nodeset'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_number
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_number"(text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_number"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pgxml', 'xpath_number'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_string
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_string"(text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_string"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xpath_string'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xpath_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xpath_table"(text, text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."xpath_table"(text, text, text, text, text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pgxml', 'xpath_table'
  LANGUAGE c STABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for xslt_process
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xslt_process"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."xslt_process"(text, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xslt_process'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for xslt_process
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."xslt_process"(text, text);
CREATE OR REPLACE FUNCTION "public"."xslt_process"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgxml', 'xslt_process'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- View structure for pg_stat_statements
-- ----------------------------
DROP VIEW IF EXISTS "public"."pg_stat_statements";
CREATE VIEW "public"."pg_stat_statements" AS  SELECT pg_stat_statements.userid,
                                                     pg_stat_statements.dbid,
                                                     pg_stat_statements.queryid,
                                                     pg_stat_statements.query,
                                                     pg_stat_statements.calls,
                                                     pg_stat_statements.total_time,
                                                     pg_stat_statements.min_time,
                                                     pg_stat_statements.max_time,
                                                     pg_stat_statements.mean_time,
                                                     pg_stat_statements.stddev_time,
                                                     pg_stat_statements.rows,
                                                     pg_stat_statements.shared_blks_hit,
                                                     pg_stat_statements.shared_blks_read,
                                                     pg_stat_statements.shared_blks_dirtied,
                                                     pg_stat_statements.shared_blks_written,
                                                     pg_stat_statements.local_blks_hit,
                                                     pg_stat_statements.local_blks_read,
                                                     pg_stat_statements.local_blks_dirtied,
                                                     pg_stat_statements.local_blks_written,
                                                     pg_stat_statements.temp_blks_read,
                                                     pg_stat_statements.temp_blks_written,
                                                     pg_stat_statements.blk_read_time,
                                                     pg_stat_statements.blk_write_time
                                              FROM pg_stat_statements(true) pg_stat_statements(userid, dbid, queryid, query, calls, total_time, min_time, max_time, mean_time, stddev_time, rows, shared_blks_hit, shared_blks_read, shared_blks_dirtied, shared_blks_written, local_blks_hit, local_blks_read, local_blks_dirtied, local_blks_written, temp_blks_read, temp_blks_written, blk_read_time, blk_write_time);

-- ----------------------------
-- Primary Key structure for table appreciation
-- ----------------------------
ALTER TABLE "public"."appreciation" ADD CONSTRAINT "appreciation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table appreciationcomment
-- ----------------------------
ALTER TABLE "public"."appreciationcomment" ADD CONSTRAINT "appreciationcomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table appreciationreaction
-- ----------------------------
ALTER TABLE "public"."appreciationreaction" ADD CONSTRAINT "appreciationreaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table article
-- ----------------------------
ALTER TABLE "public"."article" ADD CONSTRAINT "article_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table articlecomment
-- ----------------------------
ALTER TABLE "public"."articlecomment" ADD CONSTRAINT "articlecomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table articlecommentinfo
-- ----------------------------
ALTER TABLE "public"."articlecommentinfo" ADD CONSTRAINT "articlecommentinfo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table articlecommentreaction
-- ----------------------------
ALTER TABLE "public"."articlecommentreaction" ADD CONSTRAINT "articlecommentreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table articlecommentthread
-- ----------------------------
ALTER TABLE "public"."articlecommentthread" ADD CONSTRAINT "articlecommentthread_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table articlecommentthreadinfo
-- ----------------------------
ALTER TABLE "public"."articlecommentthreadinfo" ADD CONSTRAINT "articlecommentthreadinfo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table articlecommentthreadreaction
-- ----------------------------
ALTER TABLE "public"."articlecommentthreadreaction" ADD CONSTRAINT "articlecommentthreadreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table articleinfo
-- ----------------------------
ALTER TABLE "public"."articleinfo" ADD CONSTRAINT "articleinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table articlerate
-- ----------------------------
ALTER TABLE "public"."articlerate" ADD CONSTRAINT "articlerate_pkey" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table articleratecomment
-- ----------------------------
ALTER TABLE "public"."articleratecomment" ADD CONSTRAINT "articleratecomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table articleratereaction
-- ----------------------------
ALTER TABLE "public"."articleratereaction" ADD CONSTRAINT "articleratereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table authencodes
-- ----------------------------
ALTER TABLE "public"."authencodes" ADD CONSTRAINT "authencodes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table brand
-- ----------------------------
ALTER TABLE "public"."brand" ADD CONSTRAINT "brand_pkey" PRIMARY KEY ("brand");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("categoryid");

-- ----------------------------
-- Primary Key structure for table cinema
-- ----------------------------
ALTER TABLE "public"."cinema" ADD CONSTRAINT "cinema_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table company
-- ----------------------------
ALTER TABLE "public"."company" ADD CONSTRAINT "company_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table company_users
-- ----------------------------
ALTER TABLE "public"."company_users" ADD CONSTRAINT "company_users_pk" PRIMARY KEY ("company_id", "user_id");

-- ----------------------------
-- Primary Key structure for table companycategory
-- ----------------------------
ALTER TABLE "public"."companycategory" ADD CONSTRAINT "companycategory_pkey" PRIMARY KEY ("categoryid");

-- ----------------------------
-- Primary Key structure for table companycomment
-- ----------------------------
ALTER TABLE "public"."companycomment" ADD CONSTRAINT "companycomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table companyrate
-- ----------------------------
ALTER TABLE "public"."companyrate" ADD CONSTRAINT "companyrate_pk" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table companyratefullinfo
-- ----------------------------
ALTER TABLE "public"."companyratefullinfo" ADD CONSTRAINT "companyratefullinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyrateinfo01
-- ----------------------------
ALTER TABLE "public"."companyrateinfo01" ADD CONSTRAINT "companyrateinfo1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyrateinfo02
-- ----------------------------
ALTER TABLE "public"."companyrateinfo02" ADD CONSTRAINT "companyrateinfo2_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyrateinfo03
-- ----------------------------
ALTER TABLE "public"."companyrateinfo03" ADD CONSTRAINT "companyrateinfo3_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyrateinfo04
-- ----------------------------
ALTER TABLE "public"."companyrateinfo04" ADD CONSTRAINT "companyrateinfo4_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyrateinfo05
-- ----------------------------
ALTER TABLE "public"."companyrateinfo05" ADD CONSTRAINT "companyrateinfo5_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table companyratereaction
-- ----------------------------
ALTER TABLE "public"."companyratereaction" ADD CONSTRAINT "companyratereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "public"."countries" ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("country");

-- ----------------------------
-- Primary Key structure for table film
-- ----------------------------
ALTER TABLE "public"."film" ADD CONSTRAINT "film_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table filmcasts
-- ----------------------------
ALTER TABLE "public"."filmcasts" ADD CONSTRAINT "filmcasts_pkey" PRIMARY KEY ("actor");

-- ----------------------------
-- Primary Key structure for table filmcategory
-- ----------------------------
ALTER TABLE "public"."filmcategory" ADD CONSTRAINT "filmcategory_pkey" PRIMARY KEY ("categoryid");

-- ----------------------------
-- Primary Key structure for table filmcommentthread
-- ----------------------------
ALTER TABLE "public"."filmcommentthread" ADD CONSTRAINT "filmcommentthread_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table filmcommentthreadinfo
-- ----------------------------
ALTER TABLE "public"."filmcommentthreadinfo" ADD CONSTRAINT "filmcommentthreadinfo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table filmcommentthreadreaction
-- ----------------------------
ALTER TABLE "public"."filmcommentthreadreaction" ADD CONSTRAINT "filmcommentthreadreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table filmdirectors
-- ----------------------------
ALTER TABLE "public"."filmdirectors" ADD CONSTRAINT "filmdirectors_pkey" PRIMARY KEY ("director");

-- ----------------------------
-- Primary Key structure for table filmproductions
-- ----------------------------
ALTER TABLE "public"."filmproductions" ADD CONSTRAINT "filmproductions_pkey" PRIMARY KEY ("production");

-- ----------------------------
-- Primary Key structure for table filmrate
-- ----------------------------
ALTER TABLE "public"."filmrate" ADD CONSTRAINT "filmrate_pkey" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table filmratecomment
-- ----------------------------
ALTER TABLE "public"."filmratecomment" ADD CONSTRAINT "filmratecomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table filmrateinfo
-- ----------------------------
ALTER TABLE "public"."filmrateinfo" ADD CONSTRAINT "filmrateinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table filmratereaction
-- ----------------------------
ALTER TABLE "public"."filmratereaction" ADD CONSTRAINT "filmratereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table filmreplycomment
-- ----------------------------
ALTER TABLE "public"."filmreplycomment" ADD CONSTRAINT "filmreplycomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table filmreplycommentinfo
-- ----------------------------
ALTER TABLE "public"."filmreplycommentinfo" ADD CONSTRAINT "filmreplycommentinfoo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table filmreplycommentreaction
-- ----------------------------
ALTER TABLE "public"."filmreplycommentreaction" ADD CONSTRAINT "filmreplycommentreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table history
-- ----------------------------
ALTER TABLE "public"."history" ADD CONSTRAINT "history_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table item
-- ----------------------------
ALTER TABLE "public"."item" ADD CONSTRAINT "item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table itemcategory
-- ----------------------------
ALTER TABLE "public"."itemcategory" ADD CONSTRAINT "itemcategory_pkey" PRIMARY KEY ("categoryid");

-- ----------------------------
-- Primary Key structure for table itemcomment
-- ----------------------------
ALTER TABLE "public"."itemcomment" ADD CONSTRAINT "itemcomment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iteminfo
-- ----------------------------
ALTER TABLE "public"."iteminfo" ADD CONSTRAINT "iteminfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table itemresponse
-- ----------------------------
ALTER TABLE "public"."itemresponse" ADD CONSTRAINT "itemresponse_pkey" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table itemresponsereaction
-- ----------------------------
ALTER TABLE "public"."itemresponsereaction" ADD CONSTRAINT "itemresponsereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table job
-- ----------------------------
ALTER TABLE "public"."job" ADD CONSTRAINT "job_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table location
-- ----------------------------
ALTER TABLE "public"."location" ADD CONSTRAINT "location_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table locationcomment
-- ----------------------------
ALTER TABLE "public"."locationcomment" ADD CONSTRAINT "locationcomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table locationcommentthread
-- ----------------------------
ALTER TABLE "public"."locationcommentthread" ADD CONSTRAINT "locationcommentthread_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table locationcommentthreadinfo
-- ----------------------------
ALTER TABLE "public"."locationcommentthreadinfo" ADD CONSTRAINT "locationcommentthreadinfo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table locationcommentthreadreaction
-- ----------------------------
ALTER TABLE "public"."locationcommentthreadreaction" ADD CONSTRAINT "locationcommentthreadreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table locationinfo
-- ----------------------------
ALTER TABLE "public"."locationinfo" ADD CONSTRAINT "locationinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table locationinfomation
-- ----------------------------
ALTER TABLE "public"."locationinfomation" ADD CONSTRAINT "locationinfomation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table locationrate
-- ----------------------------
ALTER TABLE "public"."locationrate" ADD CONSTRAINT "locationrate_pkey" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table locationratereaction
-- ----------------------------
ALTER TABLE "public"."locationratereaction" ADD CONSTRAINT "locationratereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table locationreplycomment
-- ----------------------------
ALTER TABLE "public"."locationreplycomment" ADD CONSTRAINT "locationreplycomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table locationreplycommentinfo
-- ----------------------------
ALTER TABLE "public"."locationreplycommentinfo" ADD CONSTRAINT "locationreplycommentinfo_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table locationreplycommentreaction
-- ----------------------------
ALTER TABLE "public"."locationreplycommentreaction" ADD CONSTRAINT "locationreplycommentreaction_pkey" PRIMARY KEY ("commentid", "author", "userid");

-- ----------------------------
-- Primary Key structure for table music
-- ----------------------------
ALTER TABLE "public"."music" ADD CONSTRAINT "music_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table passwordcodes
-- ----------------------------
ALTER TABLE "public"."passwordcodes" ADD CONSTRAINT "passwordcodes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table passwords
-- ----------------------------
ALTER TABLE "public"."passwords" ADD CONSTRAINT "passwords_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table playlist
-- ----------------------------
ALTER TABLE "public"."playlist" ADD CONSTRAINT "playlist_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table reservation
-- ----------------------------
ALTER TABLE "public"."reservation" ADD CONSTRAINT "reservation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table room
-- ----------------------------
ALTER TABLE "public"."room" ADD CONSTRAINT "room_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table saveditem
-- ----------------------------
ALTER TABLE "public"."saveditem" ADD CONSTRAINT "saveditem_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table savedlocation
-- ----------------------------
ALTER TABLE "public"."savedlocation" ADD CONSTRAINT "savedlocation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table signupcodes
-- ----------------------------
ALTER TABLE "public"."signupcodes" ADD CONSTRAINT "signupcodes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table usercompanies
-- ----------------------------
ALTER TABLE "public"."usercompanies" ADD CONSTRAINT "user_companies_pkey" PRIMARY KEY ("company");

-- ----------------------------
-- Primary Key structure for table usereducations
-- ----------------------------
ALTER TABLE "public"."usereducations" ADD CONSTRAINT "educations_pkey" PRIMARY KEY ("school");

-- ----------------------------
-- Primary Key structure for table userinfo
-- ----------------------------
ALTER TABLE "public"."userinfo" ADD CONSTRAINT "userinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table userinfomation
-- ----------------------------
ALTER TABLE "public"."userinfomation" ADD CONSTRAINT "userinfomation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table userinterests
-- ----------------------------
ALTER TABLE "public"."userinterests" ADD CONSTRAINT "interests_pkey" PRIMARY KEY ("interest");

-- ----------------------------
-- Primary Key structure for table userrate
-- ----------------------------
ALTER TABLE "public"."userrate" ADD CONSTRAINT "userrate_pkey" PRIMARY KEY ("id", "author");

-- ----------------------------
-- Primary Key structure for table userratecomment
-- ----------------------------
ALTER TABLE "public"."userratecomment" ADD CONSTRAINT "userratecomment_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Primary Key structure for table userrateinfo
-- ----------------------------
ALTER TABLE "public"."userrateinfo" ADD CONSTRAINT "userrateinfo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table userratereaction
-- ----------------------------
ALTER TABLE "public"."userratereaction" ADD CONSTRAINT "userratereaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table userreaction
-- ----------------------------
ALTER TABLE "public"."userreaction" ADD CONSTRAINT "userreaction_pkey" PRIMARY KEY ("id", "author", "userid");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table usersearchs
-- ----------------------------
ALTER TABLE "public"."usersearchs" ADD CONSTRAINT "searchs_pkey" PRIMARY KEY ("item");

-- ----------------------------
-- Primary Key structure for table userskills
-- ----------------------------
ALTER TABLE "public"."userskills" ADD CONSTRAINT "skills_pkey" PRIMARY KEY ("skill");
