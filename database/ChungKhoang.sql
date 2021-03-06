USE [master]
GO
/****** Object:  Database [ChungKhoan]    Script Date: 26/04/2022 10:03:05 PM ******/
CREATE DATABASE [ChungKhoan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChungKhoan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChungKhoan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChungKhoan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChungKhoan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ChungKhoan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChungKhoan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChungKhoan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChungKhoan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChungKhoan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChungKhoan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChungKhoan] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChungKhoan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChungKhoan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChungKhoan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChungKhoan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChungKhoan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChungKhoan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChungKhoan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChungKhoan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChungKhoan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChungKhoan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ChungKhoan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChungKhoan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChungKhoan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChungKhoan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChungKhoan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChungKhoan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChungKhoan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChungKhoan] SET RECOVERY FULL 
GO
ALTER DATABASE [ChungKhoan] SET  MULTI_USER 
GO
ALTER DATABASE [ChungKhoan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChungKhoan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChungKhoan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChungKhoan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChungKhoan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChungKhoan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChungKhoan', N'ON'
GO
ALTER DATABASE [ChungKhoan] SET QUERY_STORE = OFF
GO
USE [ChungKhoan]
GO
/****** Object:  Table [dbo].[BangGiaTrucTuyen]    Script Date: 26/04/2022 10:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGiaTrucTuyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaCoPhieu] [nvarchar](7) NULL,
	[GiaMua3] [float] NULL,
	[SoLuongMua3] [int] NULL,
	[GiaMua2] [float] NULL,
	[SoLuongMua2] [int] NULL,
	[GiaMua1] [float] NULL,
	[SoLuongMua1] [int] NULL,
	[GiaBan1] [float] NULL,
	[SoLuongBan1] [int] NULL,
	[GiaBan2] [float] NULL,
	[SoLuongBan2] [int] NULL,
	[GiaBan3] [float] NULL,
	[SoLuongBan3] [int] NULL,
	[GiaKhop] [float] NULL,
	[SoLuongKhop] [int] NULL,
	[TongSo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LenhDat]    Script Date: 26/04/2022 10:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LenhDat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaCoPhieu] [nvarchar](7) NULL,
	[NgayDat] [datetime] NULL,
	[LoaiGiaoDich] [nvarchar](1) NULL,
	[LoaiLenh] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[GiaDat] [float] NULL,
	[TrangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LenhKhop]    Script Date: 26/04/2022 10:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LenhKhop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayKhop] [datetime] NULL,
	[SoLuongKhop] [int] NULL,
	[GiaKhop] [float] NULL,
	[idLenhDat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LenhKhop]  WITH CHECK ADD FOREIGN KEY([idLenhDat])
REFERENCES [dbo].[LenhDat] ([id])
GO
/****** Object:  StoredProcedure [dbo].[sp_CursorLoaiGiaoDich]    Script Date: 26/04/2022 10:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CursorLoaiGiaoDich]
  @OutputCursor CURSOR VARYING OUTPUT, 
  @MaCoPhieu NVARCHAR(10),
  @Ngay NVARCHAR(10),
  @LoaiGiaoDich CHAR 
AS
SET DATEFORMAT DMY 
	IF (@LoaiGiaoDich='M')-- lenh mua thi uu tien gia dat tu lon toi be, ngay dat tu moi tu cu
	  SET @OutputCursor=CURSOR KEYSET FOR 
	  SELECT ID,
		NgayDat, 
		SoLuong, 
		GiaDat 
	  FROM LenhDat 
	  WHERE MaCoPhieu=@MaCoPhieu 
	  AND DAY(NgayDat)= DAY(@Ngay)
	  AND MONTH(NgayDat)= MONTH(@Ngay) 
	  AND YEAR(NgayDat)= YEAR(@Ngay)  
	  AND LoaiGiaoDich = @LoaiGiaoDich 
	  AND SoLuong >0  
	  ORDER BY GiaDat DESC, NgayDat 
	ELSE--(@LoaiGiaoDich='B') - lenh ban thi uu tien lay gia dat tu be toi lon, ngay dat tu moi toi cu
	  SET @OutputCursor=CURSOR KEYSET FOR 
	  SELECT ID, 
		 NgayDat, 
	         SoLuong, 
		 GiaDat 
	  FROM LenhDat 
	  WHERE MaCoPhieu=@MaCoPhieu 
	  AND DAY(NgayDat) = DAY(@Ngay)
	  AND MONTH(NgayDat)= MONTH(@Ngay) 
	  AND YEAR(NgayDat) = YEAR(@Ngay)  
	  AND LoaiGiaoDich=@LoaiGiaoDich 
	  AND SoLuong >0  
	  ORDER BY GiaDat, NgayDat 
OPEN @OutputCursor

GO
/****** Object:  StoredProcedure [dbo].[sp_KhopLenhLienTuc]    Script Date: 26/04/2022 10:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_KhopLenhLienTuc]
	 @InputMaCoPhieu NVARCHAR( 10), 
	 @InputNgay NVARCHAR( 10),  
	 @InputLoaiGiaoDich CHAR, 
	 @InputSoLuong INT, 
	 @InputGiaDat FLOAT 
AS
	SET DATEFORMAT DMY
	DECLARE @CursorVariable CURSOR ,
			@ID int, 
			@NgayDat NVARCHAR( 10), 
			@SoLuong INT, 
			@GiaDat FLOAT,  
			@soluongkhop INT, 
			@giakhop FLOAT

	IF (@InputLoaiGiaoDich='B')
		EXEC sp_CursorLoaiGiaoDich  @CursorVariable OUTPUT, @InputMaCoPhieu,@InputNgay, 'M'
	ELSE 
		EXEC sp_CursorLoaiGiaoDich  @CursorVariable OUTPUT, @InputMaCoPhieu,@InputNgay, 'B'
  
	FETCH NEXT FROM @CursorVariable  INTO @ID, @NgayDat , @SoLuong , @GiaDat 
	WHILE (@@FETCH_STATUS <> -1 AND @InputSoLuong >0)
	BEGIN
	 IF  (@InputLoaiGiaoDich='B' )-- mình đang muốn Bán
		  IF  (@InputGiaDat <= @GiaDat) -- nên mình sẽ tìm những lệnh mua có giá cao nhất trước
	      BEGIN

			IF (@InputSoLuong > @SoLuong)
			BEGIN
				SET @soluongkhop = @SoLuong
				SET @giakhop = @GiaDat
				SET @InputSoLuong = @InputSoLuong - @SoLuong

				-- cập nhật dữ liệu tại record mà cursor đang đứng
				UPDATE dbo.LenhDat
				SET SoLuong = 0,
					TrangThai = N'Khớp Hết'
				WHERE CURRENT OF @CursorVariable 

			END

			ELSE -- (@InputSoLuong =< @SoLuong )
			BEGIN
			   SET @soluongkhop = @InputSoLuong
			   SET @giakhop = @GiaDat

			   UPDATE dbo.LenhDat  
			   SET SoLuong = SoLuong - @InputSoLuong,
					TrangThai = N'Khớp Lệnh Một Phần'
			   WHERE CURRENT OF @CursorVariable
			   SET @InputSoLuong = 0

			END

		 -- Cập nhật table LENHKHOP
		 INSERT INTO dbo.LenhKhop(NgayKhop,SoLuongKhop,GiaKhop,idLenhDat)
		 VALUES (GETDATE(),@soluongkhop,@giakhop, @ID )

		 END -- end IF (@InputGiaDat <= @GiaDat)
		 ELSE 
			GOTO THOAT

	 ELSE --  (@InputLoaiGiaoDich='M' ) 
		   IF( @InputGiaDat >= @GiaDat )-- mình đang mua vào (@Input) nên mình sẽ tìm những lệnh bán có giá thấp trước
		   BEGIN
			  IF( @InputSoLuong > @SoLuong)
			  BEGIN
				  SET @soluongkhop = @SoLuong
				  SET @giakhop = @GiaDat
				  SET @InputSoLuong = @InputSoLuong - @SoLuong

				  UPDATE dbo.LenhDat
				  SET SoLuong = 0,
					TrangThai = N'Khớp Hết'
				  WHERE CURRENT OF @CursorVariable

			  END

			  ELSE -- (@InputSoLuong < @SoLuong )
			  BEGIN
				 SET @soluongkhop = @InputSoLuong
				 SET @giakhop = @GiaDat
				 

				 UPDATE dbo.LenhDat
				 SET SoLuong = SoLuong - @InputSoLuong,
					TrangThai = N'Khớp Lệnh Một Phần'
				 WHERE CURRENT OF @CursorVariable

				 SET @InputSoLuong = 0

			  END

			  -- Cập nhật table LENHKHOP
			  INSERT INTO dbo.LenhKhop(NgayKhop,SoLuongKhop,GiaKhop,idLenhDat)
			  VALUES (GETDATE(),@soluongkhop,@giakhop, @ID )
		   END
		   ELSE
			 GOTO THOAT
	   FETCH NEXT FROM @CursorVariable INTO @ID,  @NgayDat , @SoLuong , @GiaDat -- đọc dòng kế tiếp để xử lý
	END
THOAT:
	IF(@InputSoLuong >0)-- đã khớp nhưng vẫn còn cổ phiểu | không có lệnh nào để khớp thì ghi lại vào bảng chờ lệnh khác gửi tới để khớp
		BEGIN
			INSERT INTO dbo.LenhDat(MaCoPhieu, NgayDat, LoaiGiaoDich, LoaiLenh, SoLuong, GiaDat, TrangThai)
			VALUES(@InputMaCoPhieu, GETDATE(), @InputLoaiGiaoDich, N'LO', @InputSoLuong, @InputGiaDat, N'Chờ Khớp')
		END

	ELSE
		BEGIN
			-- nếu lệnh của mình (@Input) đã được khớp hết nên ghi lại lệnh này vào bảng lệnh đặt
			INSERT INTO dbo.LenhDat(MaCoPhieu, NgayDat, LoaiGiaoDich, LoaiLenh, SoLuong, GiaDat, TrangThai)
			VALUES(@InputMaCoPhieu, GETDATE(), @InputLoaiGiaoDich, N'LO', @InputSoLuong, @InputGiaDat, N'Khớp hết')
		END
		
	CLOSE @CursorVariable 
	DEALLOCATE @CursorVariable
GO
USE [master]
GO
ALTER DATABASE [ChungKhoan] SET  READ_WRITE 
GO
