package com.wisebank.model.entity;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
public class CreditCard {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private Long cardNumber;
    @Column
    private String currency;
    @Column
    private Integer validThruMonth;
    @Column
    private Integer validThruYear;
    @Column
    private Integer cvv;
    @Column
    private Integer pin;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "accountId")
    private Account account;
}
