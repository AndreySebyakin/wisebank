package com.wisebank.dto;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class PaymentDto {
    private Integer id;
    private Long cardNumber;
    private Timestamp date;
    private Double paymentAmount;
    private String paymentStatus;
    private String beneficiary;
}
