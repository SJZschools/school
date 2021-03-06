package cn.tedu.shiro;


import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import cn.tedu.tool.MD5HashPassword;



public class Credential extends  SimpleCredentialsMatcher{

	//shiro密码加密处理,并进行匹配
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		//需要将token密码 进行加密处理
		UsernamePasswordToken loginToken = (UsernamePasswordToken) token;

		String username = loginToken.getUsername();
		//字符串的转化工具
		String password = String.valueOf(loginToken.getPassword());
	
		/*//获取加密后的密码MD5HashPassword
		String md5Password = MD5HashPassword.getPassword(username, password);*/
		
		/*//将密码存入令牌中
		loginToken.setPassword(md5Password.toCharArray());*/
		//将用户输入的内容核真实数据做匹配
		return super.doCredentialsMatch(loginToken, info);
	}
}
