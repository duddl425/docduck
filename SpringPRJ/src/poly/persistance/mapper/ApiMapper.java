package poly.persistance.mapper;

import config.Mapper;
import poly.dto.ApiDTO;

@Mapper("ApiMapper")
public interface ApiMapper {
	public int insertApi(ApiDTO aDTO) throws Exception;
}