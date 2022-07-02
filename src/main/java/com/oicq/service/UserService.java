package com.oicq.service;

import com.oicq.entity.User;
import com.oicq.entity.UserSearch;
import com.oicq.entity.vo.UserVo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    void insertOne(User user);
    User getOneByEmail(String email);

    UserVo getUserInfo(String id);

    void updateByUser(User user);
    User getOneById(String id);
    List<UserSearch> getByKeyword(String keyword);
    UserSearch getOnline(String id);
    List<UserSearch> getFriendList(String id);
}
