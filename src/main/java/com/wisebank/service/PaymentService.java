package com.wisebank.service;

import com.wisebank.dto.PaymentDto;
import com.wisebank.model.entity.Payment;

import java.util.List;

public interface PaymentService {

    List<PaymentDto> getAllPayments();

    Payment getPayment(Integer id);
}
