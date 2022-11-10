package com.wisebank.controller;

import com.wisebank.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class PaymentController {

    private final PaymentService paymentService;

    @GetMapping("/payments")
    public String getAllPayments(Model model){
        var payments = paymentService.getAllPayments();
        model.addAttribute("payments", payments);
        return "paymentlist";
    }

    @GetMapping("/payment")
    public String getPayment(@RequestParam Integer id, Model model) {
        var payment = paymentService.getPayment(id);
        model.addAttribute("payment", payment);
        return "paymentDetails";
    }
}
