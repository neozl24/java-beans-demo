package com.po;

/**
 * Created by zhongli on 2017/1/16.
 */
public class Users {

    private String username;
    private String password;

    //保留此默认的构造方法
    public Users() {

    }

    public String getUsername() { return username; }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
