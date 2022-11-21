package com.wisebank.controller;

import com.wisebank.dto.CreateCreditCardDto;
import com.wisebank.service.CreditCardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class CreditCardController {

    private final CreditCardService creditCardService;

    @GetMapping(value = "/main")
    public String goToMainPage() {
        return "main";
    }

    @GetMapping(value = "/cards")
    public String getAllCards(Model model) {
        var cards = creditCardService.getAllCards();
        model.addAttribute("cards", cards);
        return "cards";
    }

    @GetMapping(value = "/card")
    public String getCard(@RequestParam Integer id, Model model) {
        var card = creditCardService.getCard(id);
        model.addAttribute("card", card);
        return "cardDetails";
    }

    @GetMapping(value = "/showCreateCreditCard")
    public String showCreateCreditCard (Model model) {
        model.addAttribute("createCreditCard", new CreateCreditCardDto());
        return "createCreditCard";
    }

    @PostMapping(value = "/createCreditCard")
    public String createCreditCard(@ModelAttribute(value = "createCreditCard") CreateCreditCardDto createCreditCardDto,
                                   Model model) {
        creditCardService.save(createCreditCardDto);
        return "main";
    }
}
