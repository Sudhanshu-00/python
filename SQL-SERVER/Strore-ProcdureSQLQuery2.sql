USE [FoodieDB]
GO
/****** Object:  StoredProcedure [dbo].[Category_Crud]    Script Date: 11/17/2023 3:29:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Category_Crud]
	-- add the Parameters for the stored procedure here
	@Action VARCHAR(10),
	@CategoryId INT = NULL,
	@Name VARCHAR(100)=NULL,
	@IsActive BIT = false,
	@ImageUrl VARCHAR(max) = NUll
AS
BEGIN
	
	SET NOCOUNT ON;
	--Select 
	IF @Action = 'SELECT'
		BEGIN
		SELECT * FROM dbo.Categories ORDER BY CreateDate DESC
	END

	--INSERT
	IF @Action = 'INSERT'
		BEGIN
			INSERT INTO dbo.Categories(Name , ImageUrl , IsActive, CreateDate)
			VALUES (@Name, @ImageUrl, @IsActive, GETDATE())
		END

	--UPDATE
	IF @Action = 'UPDATE'
		BEGIN
			DECLARE @UPDATE_IMAGE VARCHAR(20)
			SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
		IF @UPDATE_IMAGE ='NO'
			BEGIN
				UPDATE dbo.Categories
				SET Name =@Name, IsActive = @IsActive
				WHERE CategoryId = @CategoryId
			END
		ELSE
			BEGIN
				UPDATE dbo.Categories
				SET Name =@Name, ImageUrl = @ImageUrl, IsActive= @IsActive
				WHERE CategoryId=@CategoryId
			END
		END

		--DELETE
		IF @Action = 'DELETE'
			BEGIN
				DELETE FROM dbo.Categories WHERE CreateDate = @CategoryId
			END

		--GETBYID
		IF @Action = 'SELECT'
			BEGIN
				SELECT * FROM dbo.Categories WHERE CreateDate =@CategoryId
			END

   END
