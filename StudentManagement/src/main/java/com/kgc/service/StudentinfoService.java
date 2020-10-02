package com.kgc.service;

import com.kgc.pojo.Studentinfo;

import java.util.List;

public interface StudentinfoService {
    List<Studentinfo> getlist();

    List<Studentinfo> getlistbyid(Long sid);

    int upt(Studentinfo studentinfo);

}
