package com.wisebank.model.entity;

import lombok.Data;
import javax.persistence.*;
import java.sql.Timestamp;

@Data
@Entity
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "accountId")
    private Account account;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "cardId")
    private CreditCard creditCard;
    @Column
    private Timestamp date;
    @Column
    private Double balanceBefore;
    @Column
    private Double paymentAmount;
    @Column
    private Double balanceAfter;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "paymentStatusId")
    private PaymentStatus paymentStatus;
    @Column
    private String beneficiary;
}
