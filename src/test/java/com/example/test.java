package com.example;

import cn.hutool.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class test {
    public static void main(String[] args) {
        JSONObject jsonObject = new JSONObject();
        List<Integer> ids = new ArrayList<>();
        ids.add(100);
        ids.add(110);
        ids.add(120);
        jsonObject.put("ids",ids);
        List<Integer> list = (List<Integer>) jsonObject.get("ids");
        System.out.println(list.toString());
    }
}
