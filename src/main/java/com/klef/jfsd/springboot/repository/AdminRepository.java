package com.klef.jfsd.springboot.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Admin;




@Repository
public interface AdminRepository extends JpaRepository<Admin,String>
{
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	public Admin checkadminlogin(String uname, String pwd);
	
	@Query("delete from Faculty where id=?1 ")
	@Transactional
	@Modifying
	public int deletefacByid(int id);
	
	@Query("delete from Student  where studentid = ?1")
	@Transactional
	@Modifying
	public int deletestudentByid(int sid);
	
	
}
