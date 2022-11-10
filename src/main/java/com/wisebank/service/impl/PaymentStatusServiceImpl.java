package com.wisebank.service.impl;

import com.wisebank.model.entity.PaymentStatus;
import com.wisebank.model.repository.PaymentStatusRepository;
import com.wisebank.service.PaymentStatusService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PaymentStatusServiceImpl implements PaymentStatusService {

    private final PaymentStatusRepository paymentStatusRepository;


    @Override
    public List<PaymentStatus> findAll() {
        return paymentStatusRepository.findAll();
    }
}
