package com.wisebank.dto;

import lombok.Data;

@Data
public class CreateAccountDto {

    private Double accountLimit;
    private Integer userId;
}
