package com.wisebank.model.entity;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "user_role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private String roles;
}
