package dingzhen.entity;

import java.io.Serializable;
/**
 *@author: wangq
 *@date: 2015-5-18上午10:14:58
 *@version:
 *@description：
 */
public class User extends BaseEntity implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer userId;    // 用户ID
	private String userName;   // 用户名
	private String password;   // 密码
	private Integer userType;  // 用户类型
	private Integer roleId;    // 所属角色ID
	private String userDescription;  // 用户描述
	private String roleName;         // 所属角色名称


	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getUserDescription() {
		return userDescription;
	}
	public void setUserDescription(String userDescription) {
		this.userDescription = userDescription;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", password=" + password + ", userType=" + userType
				+ ", roleId=" + roleId + ", userDescription=" + userDescription
				+ ", roleName=" + roleName + "]";
	}
	
	
	
}
