ALTER PROCEDURE [dbo].[USP_USER_MENU] 
	@USER_ID uniqueidentifier
AS
BEGIN
	select 
		distinct
		TAB_MENU.NAME MENU_NAME,
		TAB_MENU.CONTROLLER_NAME MENUCONTROLERNAME,
		TAB_SUBMENU.NAME SUBMENU_NAME,
		TAB_SUBMENU.CONTROLLER_NAME SUBMENUCONTROLERNAME,
		TAB_SUBMENU.ACTION_NAME,
		TAB_MENU.ICONCLASS,
		TAB_MENU.[ORDER] MENU_ORDER,
		TAB_SUBMENU.[ORDER] SUBMENU_ORDER
	from dbo.TAB_LOGIN_MASTER 
	inner join dbo.TAB_USER_ROLE_MAPPING on	TAB_USER_ROLE_MAPPING.USER_ID = TAB_LOGIN_MASTER.USER_ID
	inner join dbo.TAB_MENU_ROLE_MAPPING on	TAB_MENU_ROLE_MAPPING.ROLE_ID = TAB_USER_ROLE_MAPPING.ROLE_ID
	inner join dbo.TAB_MENU on TAB_MENU_ROLE_MAPPING.MENU_ID = TAB_MENU.ID
	inner join dbo.TAB_SUBMENU on TAB_MENU_ROLE_MAPPING.SUBMENU_ID = TAB_SUBMENU.ID
	where TAB_LOGIN_MASTER.[USER_ID] = @USER_ID
		and TAB_SUBMENU.ACTIVE = 1 and TAB_SUBMENU.ACTIVE = 1
END