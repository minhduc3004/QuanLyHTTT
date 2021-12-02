package com.vn.viettel.DemoConnectSQLServer;

import com.vn.viettel.DemoConnectSQLServer.Entity.Customer;
import com.vn.viettel.DemoConnectSQLServer.Repository.CustomerRepo;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Optional;

@SpringBootTest
class DemoConnectSqlServerApplicationTests {

    @Autowired
    private CustomerRepo customerRepo;

    @Test
    void testCustomerRepo() {
//        ArrayList<Customer> customers = (ArrayList<Customer>) customerRepo.findAll();
//        for (int i = 0; i < customers.size(); i++) {
//            System.out.println(customers.get(i).toString());
//        }
//        Assert.assertEquals(2, customers.size());
//        customerRepo.save(Customer.builder()
//                .id(2)
//                .name("customernew")
//                .address("ha dong")
//                .dateOfBirth(LocalDate.of(1999, 4, 30))
//                .sex(1)
//                .score(10)
//                .description("ptit")
//                .phone("0949657005")
//                .status(1)
//                .build());
        Optional<Customer> customer = customerRepo.findById(1);
        System.out.println(customer.toString());
    }

}
