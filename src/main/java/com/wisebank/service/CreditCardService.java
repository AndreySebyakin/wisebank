package com.wisebank.service;

import com.wisebank.dto.CreditCardDto;
import com.wisebank.model.entity.CreditCard;

import java.util.List;

public interface CreditCardService {

    List<CreditCardDto> getAllCards();

    CreditCard getCard(Integer id);
}
