1.用户信息表（user）
id			int		10		自动编号ID		key
userName	varchar	50		用户名
Pwd			varchar	50		密码
nickname	varchar	50		用户昵称
name		varchar	50		用户姓名
tel			varchar	50		用户电话
question	varchar	45		密码提示问题
answer		varchar	45		提示问题答案

2.管理员信息表（admin）
id			int		10		自动编号ID		key
account		varchar	50		管理员账号
name		varchar	50		管理员姓名
Pwd			varchar	50		管理员密码
sign		bit		1		管理员权限（0：普通、1：高权限）

3.图书信息表（goods）
id			int		10		自动编号
bookName	varchar	50		图书名称
bookImage	blob			图书预览图
introduce	text	16		图书简介
priceout	decimal	18		出售价格
number		int		4		图书数量
sign		bit		1		上架信息（0：下架、1：上架）

4.订单表（order）
id			int		4		自动编号
number		varchar	50		订单编号
bookId		int		10		图书编号
number		int		4		订货数量
name		int		10		用户编号
address		int		10		订货地址
tel			varchar	50		订货电话
bz			text	16		备注信息
signShip	bit		1		发货是否完成（0：否、1：是）
signRec		bit		1		收货是否完成（0：否、1：是）
review		text	16		商品评价
creaTime	time	4		创建时间

5.进货表（Purchase）
id			int		4		自动编号
number		varchar	50		进货编号
bookId		int		10		图书编号
number		int		4		进货数量
pricein		decimal	18		进货价格
bz			text	16		备注信息
creaTime	time	4		创建时间
admin		int		10		操作人ID

6.地址表（Addresses）
id			int		10		自动编号
name		int		10		用户编号
pro			varchar	50		省
city		varchar	50		市
dis			varchar	50		区
address		varchar	50		地址详情

7.收藏表（Collection）
id			int		10		自动编号
name		int		10		用户编号
bookId		int		10		图书编号