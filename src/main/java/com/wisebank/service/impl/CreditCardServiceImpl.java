package com.wisebank.service.impl;

import com.wisebank.dto.CreateCreditCardDto;
import com.wisebank.dto.CreditCardDto;
import com.wisebank.model.entity.Account;
import com.wisebank.model.entity.CreditCard;
import com.wisebank.model.repository.AccountRepository;
import com.wisebank.model.repository.CreditCardRepository;
import com.wisebank.service.CreditCardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CreditCardServiceImpl implements CreditCardService {

    private final CreditCardRepository creditCardRepository;
    private final AccountRepository accountRepository;

    @Override
    public List<CreditCardDto> getAllCards() {
        var creditCards = creditCardRepository.findAll();
        var creditCardsDto = new ArrayList<CreditCardDto>();

        creditCards.forEach(creditCard -> {
            var creditCardDto = new CreditCardDto();
            creditCardDto.setId(creditCard.getId());
            creditCardDto.setCardNumber(creditCard.getCardNumber());
            creditCardDto.setAccountBalance(creditCard.getAccount().getAccountBalance());
            creditCardDto.setStatus(creditCard.getAccount().getAccountStatus().getStatus());

            creditCardsDto.add(creditCardDto);
        });
        return creditCardsDto;
    }

    @Override
    public CreditCard getCard(Integer id) {
        return creditCardRepository.getReferenceById(id);
    }

    @Override
    public void save(CreateCreditCardDto createCreditCardDto) {

        var account = new Account();
        account = accountRepository.getReferenceById(createCreditCardDto.getAccountId());

        var creditCard = new CreditCard();
        creditCard.setCardNumber(createCreditCardDto.getCardNumber());
        creditCard.setCurrency("USD");
        creditCard.setValidThruMonth(createCreditCardDto.getValidThruMonth());
        creditCard.setValidThruYear(createCreditCardDto.getValidThruYear());
        creditCard.setCvv(createCreditCardDto.getCvv());
        creditCard.setPin(createCreditCardDto.getPin());
        creditCard.setAccount(account);

        creditCardRepository.save(creditCard);
    }
}
