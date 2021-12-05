package com.vn.viettel.DemoConnectSQLServer.Repository;

import com.vn.viettel.DemoConnectSQLServer.Entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface CustomerRepo extends JpaRepository<Customer, Integer> {
    List<Customer> findAll();

    Customer save(Customer customer);

    ArrayList<Customer> findCustomersByNameContains(String name);

    ArrayList<Customer> findCustomersByPhoneContains(String phone);

    ArrayList<Customer> findCustomersByNameContainsAndPhoneContains(String name, String phone);

}
