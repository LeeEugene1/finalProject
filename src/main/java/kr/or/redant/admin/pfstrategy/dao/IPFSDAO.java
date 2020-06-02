package kr.or.redant.admin.pfstrategy.dao;

import java.util.List;
import java.util.Map;

import kr.or.redant.vo.PortfolioResultVO;

public interface IPFSDAO {
	public List<PortfolioResultVO> strategyList(Map<String, String> params) throws Exception;
	public String insertsteategy(PortfolioResultVO pfsResultInfo) throws Exception;
}
