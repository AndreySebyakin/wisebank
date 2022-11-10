package com.wisebank.service;

import com.wisebank.model.entity.PaymentStatus;

import java.util.List;

public interface PaymentStatusService {

    List<PaymentStatus> findAll();
}
