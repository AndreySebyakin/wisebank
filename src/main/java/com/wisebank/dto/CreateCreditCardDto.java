package com.wisebank.dto;

import lombok.Data;

@Data
public class CreateCreditCardDto {
    private Long cardNumber;
    private Integer validThruMonth;
    private Integer validThruYear;
    private Integer cvv;
    private Integer pin;
    private Integer accountId;
}
