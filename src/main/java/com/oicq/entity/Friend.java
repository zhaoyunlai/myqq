package com.oicq.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Friend {
    private Integer id;
    private Integer me;
    private Integer friend;

    //    创建时间
    private Date gmt_create;
    //    修改时间
    private Date gmt_modified;
}
