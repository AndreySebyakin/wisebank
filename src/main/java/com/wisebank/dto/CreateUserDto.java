package com.wisebank.dto;

import lombok.Data;

@Data
public class CreateUserDto {
    private String name;
    private String surname;
    private String username;
    private String password;
}
