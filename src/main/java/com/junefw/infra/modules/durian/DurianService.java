package com.junefw.infra.modules.durian;

import java.util.List;

public interface DurianService {
	
	public List<Durian> selectList() throws Exception; 

	public Durian selectOne(DurianVo vo) throws Exception;
	
} 