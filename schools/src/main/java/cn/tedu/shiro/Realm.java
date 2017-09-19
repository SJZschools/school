package cn.tedu.shiro;


import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import cn.tedu.pojo.User;
import cn.tedu.service.LoginService;

public class Realm extends  AuthorizingRealm{
	@Autowired
	private LoginService loginService;

	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection argo){

		return  null;

	}

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token){
		UsernamePasswordToken loginToken = (UsernamePasswordToken)token;

		String username =  loginToken.getUsername();

		User user = loginService.findUser(username);

		AuthenticationInfo userinfo = new SimpleAuthenticationInfo(user,user.getPassword(),user.getUsername());

		return userinfo;

	}



}
