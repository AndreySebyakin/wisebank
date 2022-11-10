package com.wisebank.model.entity;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private Double accountBalance;
    @Column
    private Double accountLimit;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "accountStatusId")
    private AccountStatus accountStatus;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userId")
    private User user;
}
