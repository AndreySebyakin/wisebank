package com.wisebank.dto;

import lombok.Data;

@Data
public class CreditCardDto {
    private Integer id;
    private Long cardNumber;
    private Double accountBalance;
    private String status;
}
