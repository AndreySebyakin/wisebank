package com.wisebank.dto;

import lombok.Data;

@Data
public class CreateUserDto {
    private String name;
    private String surname;
    private String userLogin;
    private String password;
}
