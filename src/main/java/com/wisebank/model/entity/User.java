package com.wisebank.model.entity;

import lombok.*;

import javax.persistence.*;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private String name;
    @Column
    private String surname;
    @JoinColumn(name = "roleId")
    @ManyToOne(cascade = CascadeType.ALL)
    private Role roleId;
    @Column
    private String username;
    @Column
    private String password;
    @Column
    private boolean enabled;
    @Column(name = "credentials_non_expired")
    private boolean credentialsNonExpired;
    @Column(name = "account_non_expired")
    private boolean accountNonExpired;
    @Column(name = "account_non_locked")
    private boolean accountNonLocked;
}
