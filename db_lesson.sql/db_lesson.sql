Q1.   create table departments(
              -> department_id INT(10) AUTO_INCREMENT PRIMARY KEY,
              -> name VARCHAR(20) NOT NULL,
              ->created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
              ->updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
              -> );

Q2.   alter table people add department_id INT unsigned after email;

Q3.  mysql> insert into departments (name)
    -> values
    -> ('営業'),
    -> ('開発'),
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');

mysql> insert into people(name,email,age,gender)
    -> values
    -> ('佐藤だいき','satou@beyond-works.co.jp',32,1),
    -> ('安西ゆり','anzai@beyond-works.co.jp',22,2),
    -> ('観音寺ことり','kannonji@beyond-works.co.jp',56,2),                                                                                                               　　-> ('天久たかお','ameku@beyond-works.co.jp',33,1),                                                                                                             　　-> ('沢谷まい','sawaya@beyond-works.co.jp',65,2),
    -> ('立石かずや','tateishi@beyond-works.co.jp',45,1),
    -> ('葛西としのり','kasai@beyond-works.co.jp',24,1),
    -> ('片瀬あや','katase@beyond-works.co.jp',41,2),
    -> ('渡かける','watari@beyond-works.co.jp',28,1),
    -> ('桂ことのは','katsura@beyond-works.co.jp',37,2);

mysql> UPDATE people SET department_id = 1 where person_id= 12,
    -> UPDATE people SET department_id = 1 where person_id= 13,
    -> UPDATE people SET department_id = 1 where person_id= 14,
    -> UPDATE people SET department_id = 2 where person_id= 15,
    -> UPDATE people SET department_id = 2 where person_id= 16,
    -> UPDATE people SET department_id = 2 where person_id= 17,
    -> UPDATE people SET department_id = 2 where person_id= 18,
    -> UPDATE people SET department_id = 3 where person_id= 19,
    -> UPDATE people SET department_id = 4 where person_id= 20,
    -> UPDATE people SET department_id = 5 where person_id= 21


         mysql> insert into reports(person_id,content)
    -> values
    -> (12,'今日もおつかれさまでした'),
    -> (13,'たいへんお世話になりました'),
    -> (14,'おおきなミスをしてしまいました'),
    -> (15,'たいちょうがすぐれません'),
    -> (16,'研修すべて完了しました'),
    -> (17,'今日までのノルマ達成済です'),
    -> (18,'明日のミーティングお願いします'),
    -> (19,'今までお世話になりました'),
    -> (20,'引き継ぎ事項他にありますか'),
    -> (21,'これからもよろしくお願いします');


Q4.  mysql> UPDATE people SET department_id = 1 where person_id= 1;
        mysql> UPDATE people SET department_id = 2 where person_id= 2;
        mysql> UPDATE people SET department_id = 3 where person_id= 3;
        mysql> UPDATE people SET department_id = 4 where person_id= 4;
        mysql> UPDATE people SET department_id = 5 where person_id= 6;


Q5. mysql> select * from people where gender = 1 order by age DESC;

Q6. peopleというテーブルから部署ID １に該当する人の名前、メールアドレス、年齢の３つのカラムを１つのレコードとして作成された順に取得するクエリ。

Q7. select name from people where (gender = 2 and 20<= age and age<=29 or gender = 1 and 40 <= age and age<=49);

Q8. mysql> select * from people where department_id = 1 order by age;

Q9. mysql> select AVG(age) as average_age from people where department_id = 2 and gender =2;

Q10.select people.name,departments.name,reports.content from people inner join departments on departments.department_id = people.department_id inner join reports on reports.person_id = people.person_id;

Q11.select name from people as p left outer join reports r  on p.person_id = r.person_id where content is null;


