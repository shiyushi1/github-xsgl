package com.kgc.service.impl;

import com.kgc.mapper.StudentinfoMapper;
import com.kgc.pojo.Studentinfo;
import com.kgc.pojo.StudentinfoExample;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("studentinfoService")
public class StudentinfoServiceImpl implements StudentinfoService {
    @Resource
    StudentinfoMapper studentinfoMapper;
    @Override
    public List<Studentinfo> getlist() {
        StudentinfoExample example=new StudentinfoExample();
        StudentinfoExample.Criteria criteria=example.createCriteria();
        List<Studentinfo> list=studentinfoMapper.selectByExample(null);
        return list;
    }

    @Override
    public List<Studentinfo> getlistbyid(Long sid) {
        StudentinfoExample example=new StudentinfoExample();
        StudentinfoExample.Criteria criteria=example.createCriteria();
        criteria.andSidEqualTo(sid);
        List<Studentinfo> listbysid=studentinfoMapper.selectByExample(example);
        return listbysid;
    }

    @Override
    public int upt(Studentinfo studentinfo) {
        int i=studentinfoMapper.updateByPrimaryKey(studentinfo);
        return i;
    }
}
