package com.oicq.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class Notice {
    private Integer id;
    private String from;
    private String to;
    private String msg;
    private Integer type;
    private String time;
    //    创建时间
    private Date gmt_create;
    //    修改时间
    private Date gmt_modified;
}
