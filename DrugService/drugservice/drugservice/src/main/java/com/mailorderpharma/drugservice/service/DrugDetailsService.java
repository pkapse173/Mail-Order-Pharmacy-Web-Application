package com.mailorderpharma.drugservice.service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.mailorderpharma.drugservice.entity.DrugDetails;
import com.mailorderpharma.drugservice.entity.ResponseForSuccess;
import com.mailorderpharma.drugservice.entity.Stock;
import com.mailorderpharma.drugservice.exception.InvalidTokenException;
import com.mailorderpharma.drugservice.exception.StockNotFoundException;

public interface DrugDetailsService {

	DrugDetails getDrugById(String id, String token) throws InvalidTokenException;

	DrugDetails getDrugByName(String name, String token) throws InvalidTokenException;

	Stock getDispatchableDrugStock(String id, String location, String token)
			throws InvalidTokenException, StockNotFoundException;

	ResponseEntity<ResponseForSuccess> updateQuantity(String id, String location, int quantity, String token)
			throws InvalidTokenException, StockNotFoundException;

	List<DrugDetails> getAllDrugs();

}
