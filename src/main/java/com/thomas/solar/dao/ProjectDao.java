package com.thomas.solar.dao;

import java.util.List;

import com.thomas.solar.domain.Projectdetail;

public interface ProjectDao
{
    public Projectdetail findById(Long pid);

    public List<Projectdetail> findAll();

    public void register(Projectdetail project);
}
