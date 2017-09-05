## OAuth

OAuth（开放授权）是一个开放标准，允许用户让第三方应用访问该用户在某一网站上存储的私密的资源（如照片，视频，联系人列表），而无需将用户名和密码提供给第三方应用。
OAuth允许用户提供一个令牌，而不是用户名和密码来访问他们存放在特定服务提供者的数据。每一个令牌授权一个特定的网站（例如，视频编辑网站)在特定的时段（例如，接下来的2小时内）内访问特定的资源（例如仅仅是某一相册中的视频）。这样，OAuth让用户可以授权第三方网站访问他们存储在另外服务提供者的某些特定信息，而非所有内容。

## OAuth流程

![流程](http://image.beekka.com/blog/2014/bg2014051204.png)

### 以接入github为例

接口文档
https://developer.github.com/apps/building-integrations/setting-up-and-registering-oauth-apps/about-authorization-options-for-oauth-apps/

- 应用注册

首先登录github在页面中注册应用
https://github.com/settings/applications/new

例：
![注册应用](http://obvvfkok4.bkt.clouddn.com/oauth_new_app_meitu_1.jpg)


Client ID
180efe4cfa28f24da32a

Client Secret
657ba3ddff46481efcd6c40a144aee4f5fd97a20


- 获取code

url:
GET http://github.com/login/oauth/authorize


http://github.com/login/oauth/authorize?client_id=180efe4cfa28f24da32a&state=xxxxxxxxxxx



- 获取token

url:
POST https://github.com/login/oauth/access_token



