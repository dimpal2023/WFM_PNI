Create FUNCTION [dbo].[UFN_DECODEBASE64]
(
    @Input_Base64_Value VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN (
		SELECT
			CAST(
                CAST(N'' AS XML).value('xs:base64Binary(sql:variable("@Input_Base64_Value"))', 'VARBINARY(MAX)') 
            AS VARCHAR(MAX)
            ) AS RetVal
    )
END


Go
Create FUNCTION [dbo].[UFN_ENCODEBASE64]
(
    @InputString VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN (
		SELECT
			CAST(N'' AS XML).value(
                  'xs:base64Binary(xs:hexBinary(sql:column("bin")))'
                , 'VARCHAR(MAX)'
            )
        FROM (
            SELECT CAST(@InputString AS VARBINARY(MAX)) AS bin
        ) AS RetVal
    )
END;
Go

ALTER PROCEDURE [dbo].[USP_ACCOUNT_VALIDATEUSER]
	@USERNAME nvarchar(255),
	@PASSWORD nvarchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	select 
	distinct
		TAB_LOGIN_MASTER.[USER_ID],
		TAB_LOGIN_MASTER.USER_LOGIN_ID,
		TAB_LOGIN_MASTER.[USER_NAME],	
		TAB_LOGIN_MASTER.COMPANY_ID,
		TAB_LOGIN_MASTER.MAIL_ID,
		TAB_LOGIN_MASTER.MOBILE_NO,
		TAB_LOGIN_MASTER.CURRENT_PASSWORD,
		TAB_LOGIN_MASTER.LAST_LOGIN_DATE,
		TAB_LOGIN_MASTER.LAST_LOGIN_IP,
		TAB_LOGIN_MASTER.WRONG_ATTEMP_COUNT,
		TAB_LOGIN_MASTER.PASSWORD_CHANGE_DATE,
		TAB_LOGIN_MASTER.PASSWORD_EXPIRY_DAY,
		TAB_LOGIN_MASTER.PASSWORD1,
		TAB_LOGIN_MASTER.PASSWORD2,
		TAB_LOGIN_MASTER.PASSWORD3,
		TAB_LOGIN_MASTER.created_date,
		TAB_LOGIN_MASTER.Created_by,
		TAB_LOGIN_MASTER.UPDATED_DATE,
		TAB_LOGIN_MASTER.UPDATED_BY,
		TAB_LOGIN_MASTER.[status],
		--(
		--	select 				
		--		TAB_ROLE_MASTER.ROLE_NAME
		--	from dbo.TAB_LOGIN_MASTER
		--	inner join TAB_USER_ROLE_MAPPING on TAB_USER_ROLE_MAPPING.[User_ID] =  TAB_LOGIN_MASTER.[USER_ID]
		--	inner join TAB_ROLE_MASTER on TAB_ROLE_MASTER.ROLE_ID = TAB_USER_ROLE_MAPPING.ROLE_ID
		--	where TAB_LOGIN_MASTER.USER_LOGIN_ID = @USERNAME 
		--		and TAB_LOGIN_MASTER.CURRENT_PASSWORD = @PASSWORD
		--		and TAB_LOGIN_MASTER.[status] = 'Y'
		--	FOR XML PATH(''), ROOT('ROLES')
		--) as ROLE_NAME,
		TAB_ROLE_MASTER.ROLE_NAME
	from dbo.TAB_LOGIN_MASTER
	inner join TAB_USER_ROLE_MAPPING on TAB_USER_ROLE_MAPPING.[User_ID] =  TAB_LOGIN_MASTER.[USER_ID]
	inner join TAB_ROLE_MASTER on TAB_ROLE_MASTER.ROLE_ID = TAB_USER_ROLE_MAPPING.ROLE_ID
	where TAB_LOGIN_MASTER.USER_LOGIN_ID = @USERNAME 
		and dbo.UFN_DECODEBASE64(TAB_LOGIN_MASTER.CURRENT_PASSWORD) = @PASSWORD
		and TAB_LOGIN_MASTER.[status] = 'Y'
END

Go

update TAB_LOGIN_MASTER set CURRENT_PASSWORD = dbo.UFN_ENCODEBASE64(CURRENT_PASSWORD)
Go