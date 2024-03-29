package com.oicq.dao;

import com.oicq.entity.User;
import com.oicq.entity.UserSearch;
import com.oicq.entity.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserDao {
    void insertOne(User user);
    UserVo getUserInfo(String id);
    User getOneByEmail(String email);
    void updateByUser(User user);
    User getOneById(String id);
    List<UserSearch> getByKeyword(String keyword);
    UserSearch getOnline(String id);
    List<UserSearch> getFriendList(String id);
}
