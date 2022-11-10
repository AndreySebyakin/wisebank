package com.wisebank.service.impl;

import com.wisebank.dto.PaymentDto;
import com.wisebank.model.entity.Payment;
import com.wisebank.model.repository.PaymentRepository;
import com.wisebank.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService {

    private final PaymentRepository paymentRepository;

    @Override
    public List<PaymentDto> getAllPayments() {
        var payments = paymentRepository.findAll();
        var paymentsDto = new ArrayList<PaymentDto>();

        payments.forEach(payment -> {
            var paymentDto = new PaymentDto();
            paymentDto.setId(payment.getId());
            paymentDto.setCardNumber(payment.getCreditCard().getCardNumber());
            paymentDto.setDate(payment.getDate());
            paymentDto.setPaymentAmount(payment.getPaymentAmount());
            paymentDto.setPaymentStatus(payment.getPaymentStatus().getStatus());
            paymentDto.setBeneficiary(payment.getBeneficiary());

            paymentsDto.add(paymentDto);
        });
        return paymentsDto;
    }

    @Override
    public Payment getPayment(Integer id) {
        return paymentRepository.getReferenceById(id);
    }
}
