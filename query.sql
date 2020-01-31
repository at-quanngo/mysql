
-- Cau 2: Thêm 1 dòng dữ liệu trong bất kỳ table nào
Insert into news (id,category_id,titile,view,is_active,content,created_at,updated_at)
values ('41','1','Thucuoi','12','1','Colenao','2017-06-22 15:30:30','2017-06-22 15:30:30');
-- Cau 3: Xoá và sửa 1 dòng dữ liệu trong bất kỳ table nào
Delete from news where id ='35';
Update news
Set title='LastAuthur',content='Emduamuathudi'
Where id='41';

-- Cau 4: Select 10 blog mới nhất đã active
Select * from blog 
where is_active > 0 
Limit 10;
-- Cau 5: Lấy 5 blog từ blog thứ 10
Select * from blog 
Limit 10,5;
-- Cau 6: Set is_active = 0 của user có id = 3 trong bảng user
Update user 
set is_active = 0 
where id='3';
-- Cau 7: Xoá tất cả comment của user = 2 trong blog = 5`
Delete 
from comment
where target_table='blog' and target_id='5' and user_id='2';
-- Cau 8: Lấy 3 blog bất kỳ (random)
SELECT * FROM blog 
ORDER BY RAND()  
LIMIT 3;
-- Cau 9: Lấy số lượng comment của các blog
SELECT COUNT(comment) AS "tong comment"
FROM comment
WHERE target_table='blog';
-- Cau 10: Lấy Category có tồn tại blog hoặc news đã active (không được lặp lại category)
select distinct b.category_id as 'blog_category',n.category_id as 'new_category'
from blog b
inner join news n
on b.category_id = n.category_id
where b.is_active > 0 and n.is_active > 0 ;
-- Cau 11: Lấy tổng lượt view của từng category thông qua blog và news
select sum(b.view),sum(n.view),b.category_id
from blog b
inner join news n
on b.category_id=n.category_id
group by b.category_id;


-- Cau 12: Lấy blog được tạo bởi user mà user này không có bất kỳ comment ở blog
SELECT distinct title,blog.user_id FROM blog 
where user_id not in 
(SELECT distinct user_id FROM comment where target_table="blog");
-- Cau 13: Lấy 5 blog mới nhất và số lượng comment cho từng blog
select *
from blog
order by id desc
limit 5; 
-- Cau 14: Lấy 3 User comment đầu tiên trong 5 blogs mới nhất
select c.user_id from (select * from blog order by id desc limit 5) as sub 
join comment as c on sub.id = c.target_id 
where c.target_table="blog" 
order by c.target_id asc 
limit 3;
-- Cau 15: Update rank user = 2 khi tổng số lượng comment của user > 20
select user_id as id from (select count(comment) as rs ,user_id from comment 
group by user_id) as z 
where rs >10;
-- Cau 16: Xoá comment mà nội dung comment có từ "fuck" hoặc "phức"
Delete 
from comment
where comment.comment LIKE '%fuck%' or '%phức%';
-- Cau 17: Select 10 blog mới nhất được tạo bởi các user active
select * from blog as b 
join user as u on b.user_id=u.id 
where u.is_active=1 
order by b.id desc 
limit 10;
-- Cau 18: Lấy số lượng Blog active của user có id là 1,2,4

select count(is_active) as 'soluong_blog',user_id
from blog 
where user_id in (1,2,4) and is_active='1'
group by user_id;

-- Cau 19: Lấy 5 blog và 5 news của 1 category bất kỳ
select b.id,n.id,b.category_id
from blog b
inner join news n
on b.category_id=n.category_id
order by rand()
limit 5;	
-- Cau 20: Lấy blog và news có lượt view nhiều nhất
select max(b.view),max(n.view),b.category_id 
from blog b
inner join news n
on b.category_id=n.category_id
group by b.category_id;
-- Cau 21: Lấy blog được tạo trong 3 ngày gần nhất
select * 
from blog 
where day(CURDATE()) - day(created_at) =3;

-- Cau 22: Lấy danh sách user đã comment trong 2 blog mới nhất
select u.* from user as u 
join comment as c on u.id = c.user_id 
where target_table = "blog" order by target_id desc limit 2;
-- Cau 23: blog, 2 news mà user có id = 1 đã comment
(select target_id from comment where user_id = 1 and target_table = "news" limit 2)
union
(select target_id from comment where user_id = 1 and target_table = "blog" limit 2);
-- Cau 24: blog và 1 news có số lượng comment nhiều nhất
(select count(comment),target_id from comment where target_table = "blog" group by target_id order by count(comment) desc limit 1)
union
(select count(comment),target_id from comment where target_table = "news" group by target_id order by count(comment) desc limit 1);
-- Cau 25: Lấy 5 blog và 5 news mới nhất đã active
(select id,content from blog where is_active = 1 order by id desc limit 5)
union
(select id,content from news where is_active = 1 order by id desc limit 5);
-- Cau 26: Lấy nội dung comment trong blog và news của user id =1
select comment from comment where user_id = 1;
-- Cau 27: Blog của user đang được user có id = 1 follow
select * from blog as b 
join (select to_user_id from follow where from_user_id = 1) as rs 
on b.user_id = rs.to_user_id;
-- Cau 28: Lấy số lượng user đang follow user = 1
select count(from_user_id) from follow where to_user_id = 1;
-- Cau 29: Lấy số lượng user 1 đang follow
select count(to_user_id) from follow where from_user_id = 1;
-- Cau 30: Lấy 1 comment(id_comment, comment) mới nhất và thông tin user của user đang được follow bởi user 1

-- Cau 31: 	Hiển thị một chuổi "PHP Team " + ngày giờ hiện tại (Ex: PHP Team 2017-06-21 13:06:37)
SELECT CONCAT("PHP Team ", NOW()) AS SEQUENCE;
-- Cau 32: Tìm có tên(user.full_name) "Khiêu" và các thông tin trên blog của user này như: (blog.title, blog.view), title category(category) của blog này.
select u.full_name,b.title,b.view,c.title from user as u 
join blog as b on u.id = b.user_id 
join category as c on c.id = b.category_id 
where u.full_name like "%khiêu%";
-- Cau 33: Liệt kê email user các user có tên(user.full_name) có chứa ký tự "Khi"
select group_concat(email) from user where full_name like "%Khi%";
-- Cau 34: Tính điểm cho user có email là minh82@example.com trong bảng comment. Cách tính điểm: Trong bảng comment với taget_table = "blog" tính 1 điểm,taget_table = "news" tính 2 điểm.
SELECT email,SUM(CASE target_table WHEN "blog" THEN 1 ELSE 2 END) AS DIEM FROM user 
INNER JOIN comment 
ON user.id = comment.user_id 
WHERE email = "minh82@example.com";