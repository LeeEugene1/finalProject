package kr.or.redant.admin.pfstrategy.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import kr.or.redant.admin.businessday.dao.IBSDayDAO;
import kr.or.redant.admin.pfstrategy.dao.IPFSDAO;
import kr.or.redant.vo.BusinessDayVO;
import kr.or.redant.vo.PortfolioResultVO;

@Service
public class IPFSServiceImpl implements IPFSService {
	@Autowired
	private IPFSDAO DAO;
	

	@Transactional(propagation=Propagation.REQUIRES_NEW, readOnly=true)
	@Override
	public List<PortfolioResultVO> strategyList(Map<String, String> params)
			throws Exception {
		List<PortfolioResultVO> strategyList = null;
		strategyList = DAO.strategyList(params);
		return strategyList;
	}

	@Transactional(propagation=Propagation.REQUIRES_NEW, readOnly=true)
	@Override
	public void insertsteategy(PortfolioResultVO pfsResultInfo)
			throws Exception {
		 DAO.insertsteategy(pfsResultInfo);
		
	}



}
