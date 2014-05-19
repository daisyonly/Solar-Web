package com.thomas.solar.dao;

import java.util.List;

import com.thomas.solar.domain.Member;

public interface MemberDao
{
    public Member findById(Long id);

    public Member findByEmail(String email);

    public List<Member> findAllOrderedByName();

    public void register(Member member);
    
    public void delete(Long id);
}
