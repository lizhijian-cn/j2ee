package com.lizhijian.j2ee.bean.calculator;

import lombok.Data;

@Data
public class Calculator {
    String first;
    String second;
    String op;
    Double result;

    public void calculate() {
        try {
            double one = Double.parseDouble(first);
            double two = Double.parseDouble(second);
            if (op.equals("+")) result = one + two;
            else if (op.equals("-")) result = one - two;
            else if (op.equals("*")) result = one * two;
            else if (op.equals("/")) result = one / two;
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
