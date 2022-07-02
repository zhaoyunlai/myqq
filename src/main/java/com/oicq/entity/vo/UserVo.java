package com.oicq.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @Author: Zhao YunLai
 * @Date: 2022/06/05/19:21
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVo {
    //    用户id
    private Integer id;
    //    邮箱
    private String email;
    //    昵称
    private String nickname;
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
    //    血型
    private String blood_type;
    //    好友政策
    private Integer friendship_policy;
//    星座id
    private Integer star_id;
    //    星座
    private String star_type;
    //    创建时间
    private Date gmt_create;
    //    修改时间
    private Date gmt_modified;
}
