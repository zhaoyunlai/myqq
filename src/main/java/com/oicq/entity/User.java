package com.oicq.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
//    邮箱
    private String email;
//   昵称
    private String nickname;
//    密码
    private String password;
//    头像地址
    private String url;
//    电话号码
    private String phone;
//    个性签名
    private String signature;
//    性别
    private Integer sex;
//    血型id
    private Integer blood_type_id;
//    好友政策
    private Integer friendship_policy;
//    星座id
    private Integer star_id;
//    创建时间
    private Date gmt_create;
//    修改时间
    private Date gmt_modified;
}
