use QuanLySinhVien;
select address, count(studentId) as `số lượng sinh viên`
from Student
group by address;
-- Tính điểm trung bình của sinh viên
select s.studentId,s.studentName, avg(mark)
from student s join mark M on s.studentId=m.studentId
group by s.studentId, s.studentName;
-- Hiện thị học sinh có điểm trung bình lớn hơn 15
select s.studentId, s.studentName, avg(mark)
from student s join mark m on s.studentId=m.studentId
group by s.studentId,s.studentName
having avg(mark)>15;
-- Hiện thị sinh viên có điểm trung bình cao nhất
select s.studentId, s.studentName,avg(mark)
from student s join mark m on s.studentId=m.studentId
group by s.studentId,s.studentName
having avg(mark)>= all (select avg(mark)from mark group by mark.studentId);