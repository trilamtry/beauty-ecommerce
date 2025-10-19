CREATE DATABASE QL_MyPham;
GO
USE QL_MyPham;

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY IDENTITY,
    CategoryName NVARCHAR(100)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY,
    ProductName NVARCHAR(200),
    Price DECIMAL(18,2),
    Image NVARCHAR(200),
    Description NVARCHAR(500),
    CategoryID INT FOREIGN KEY REFERENCES Category(CategoryID)
);

-- Thêm danh mục mỹ phẩm
INSERT INTO Category (CategoryName) VALUES
(N'Sữa rửa mặt'),
(N'Kem dưỡng da'),
(N'Son môi'),
(N'Nước hoa'),
(N'Mặt nạ');

-- Thêm thêm dữ liệu cho các danh mục mỹ phẩm (mô tả chi tiết hơn)
INSERT INTO Product (ProductName, Price, Image, Description, CategoryID) VALUES
-- Sữa rửa mặt
(N'Sữa rửa mặt Innisfree Green Tea Foam Cleanser', 145000, 'hinh1.jpg',
 N'Sữa rửa mặt chiết xuất trà xanh tươi nguyên từ đảo Jeju, giúp loại bỏ bụi bẩn, dầu thừa và tạp chất sâu trong lỗ chân lông. 
  Sản phẩm mang lại cảm giác tươi mát, se khít lỗ chân lông, đồng thời duy trì độ ẩm tự nhiên cho da.', 1),

(N'Sữa rửa mặt La Roche-Posay Effaclar', 310000, 'hinh2.jpg',
 N'Sữa rửa mặt chuyên biệt dành cho da dầu và da mụn, chứa kẽm Pidolate giúp giảm bã nhờn, làm sạch sâu mà không gây khô da. 
  Công thức không chứa xà phòng, không cồn, phù hợp cả với làn da nhạy cảm.', 1),

-- Kem dưỡng da
(N'Kem dưỡng ẩm Neutrogena Hydro Boost', 360000, 'hinh3.jpg',
 N'Kem dưỡng dạng gel nhẹ, thấm nhanh, chứa Hyaluronic Acid giúp cấp nước sâu và khóa ẩm suốt 48 giờ. 
  Không gây nhờn rít, giúp da căng mịn và mềm mại ngay sau khi sử dụng. Phù hợp cho da khô, da thường và da hỗn hợp.', 2),

(N'Kem chống nắng Anessa SPF50+', 480000, 'hinh4.jpg',
 N'Kem chống nắng cao cấp đến từ Nhật Bản, ứng dụng công nghệ Aqua Booster EX giúp tăng khả năng chống tia UV khi da tiếp xúc với nước hoặc mồ hôi. 
  Có thể dùng làm lớp lót trang điểm, phù hợp cho mọi loại da, đặc biệt là da dầu.', 2),

(N'Kem dưỡng trắng da Snow White Cream', 290000, 'hinh5.jpg',
 N'Sản phẩm dưỡng trắng da tức thì, giúp làn da đều màu và sáng tự nhiên. 
  Với chiết xuất Niacinamide và tinh chất sữa, kem thấm nhanh, không bết dính, giúp da luôn mềm mại và tươi sáng.', 2),

-- Son môi
(N'Son MAC Ruby Woo', 650000, 'hinh6.jpg',
 N'Son lì màu đỏ cổ điển nổi tiếng của MAC, chất son mịn, không khô môi và cực kỳ bền màu. 
  Phù hợp với mọi tông da, giúp tôn lên vẻ đẹp quyến rũ, sang trọng và tự tin cho người dùng.', 3),

(N'Son YSL Rouge Pur Couture', 890000, 'hinh7.jpg',
 N'Son môi cao cấp đến từ thương hiệu YSL nổi tiếng, mang lại độ ẩm mịn và màu sắc sang trọng. 
  Với thiết kế vỏ vàng ánh kim tinh tế, đây là món đồ không thể thiếu trong túi xách của phái đẹp.', 3),

(N'Son kem Black Rouge Air Fit Velvet', 250000, 'hinh8.jpg',
 N'Son kem lì nhẹ môi, lên màu chuẩn và đều, có mùi thơm nhẹ nhàng. 
  Kết cấu mịn mượt như nhung, giúp môi căng mọng và giữ màu bền suốt nhiều giờ. 
  Phù hợp với phong cách trẻ trung và năng động.', 3),

(N'Son Dior Addict Lip Glow', 950000, 'hinh9.jpg',
 N'Son dưỡng có màu nhẹ nhàng, chứa dầu cherry và bơ hạt mỡ giúp dưỡng ẩm sâu cho môi. 
  Khi thoa lên, son tự điều chỉnh tông màu theo sắc tố tự nhiên của môi, mang lại vẻ đẹp tươi tắn và tự nhiên.', 3),

(N'Son Tom Ford Lip Color Matte', 1200000, 'hinh10.jpg',
 N'Son lì cao cấp với công thức chứa nhiều tinh dầu quý như dầu hoa cúc và bơ Murumuru, 
  giúp môi mềm mịn và mượt mà suốt ngày dài. Màu son lên chuẩn chỉ sau một lần thoa, thích hợp cho những buổi tiệc sang trọng.', 3),

(N'Son Chanel Rouge Allure Velvet', 1050000, 'hinh11.jpg',
 N'Son lì cao cấp với chất son mềm, nhẹ, không gây khô môi. 
  Màu đỏ trầm quyến rũ giúp tôn lên vẻ đẹp thanh lịch và tự tin của người phụ nữ hiện đại.', 3),


-- Nước hoa
(N'Nước hoa Gucci Bloom', 2600000, 'hinh12.jpg',
 N'Hương thơm hoa cỏ tự nhiên với hoa nhài, hoa huệ và hoa kim ngân tạo nên mùi hương thanh lịch, nữ tính. 
  Gucci Bloom tôn vinh vẻ đẹp tự nhiên và sự tự tin của người phụ nữ hiện đại. Thích hợp dùng hằng ngày hoặc khi đi tiệc.', 4),

(N'Nước hoa Versace Eros', 3100000, 'hinh13.jpg',
 N'Mùi hương mạnh mẽ, nam tính kết hợp giữa bạc hà, táo xanh và vanilla. 
  Đây là lựa chọn hoàn hảo cho những người đàn ông tự tin, quyến rũ và đam mê chinh phục.', 4),

-- Mặt nạ
(N'Mặt nạ đất sét Kiehl’s Rare Earth', 900000, 'hinh14.jpg',
 N'Mặt nạ đất sét trắng Amazon giúp hút sạch dầu thừa, bã nhờn và loại bỏ mụn đầu đen. 
  Sử dụng 2-3 lần/tuần sẽ giúp da sạch sâu, sáng mịn và se khít lỗ chân lông rõ rệt.', 5),

(N'Mặt nạ dưỡng trắng Mediheal', 40000, 'hinh15.jpg',
 N'Mặt nạ giấy cao cấp của Hàn Quốc, giàu dưỡng chất Niacinamide và Adenosine giúp làm sáng da, giảm nếp nhăn. 
  Cung cấp độ ẩm tức thì và mang lại làn da mịn màng, căng bóng sau mỗi lần sử dụng.', 5),

(N'Mặt nạ cấp ẩm Lululun Pink', 35000, 'hinh16.jpg',
 N'Mặt nạ dưỡng ẩm hàng ngày, chiết xuất từ hoa hồng và mật ong. 
  Dưỡng chất thẩm thấu sâu vào da, giúp phục hồi độ đàn hồi và mang lại làn da tươi trẻ, khỏe mạnh.', 5);

