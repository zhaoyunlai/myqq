package com.oicq.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Message {
    private Integer id;
    private Integer from;
    private Integer to;
    //消息内容
    private String content;
    //    创建时间
    private Date gmt_create;
    //    修改时间
    private Date gmt_modified;
}
