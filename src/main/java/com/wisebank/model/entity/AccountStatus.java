package com.wisebank.model.entity;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
public class AccountStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private String status;
}
