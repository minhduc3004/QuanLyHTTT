package com.vn.viettel.DemoConnectSQLServer.Repository;

import com.vn.viettel.DemoConnectSQLServer.Entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CustomerRepo extends JpaRepository<Customer, Integer> {
    List<Customer> findAll();

    Optional<Customer> findCustomerById(int id);

    Customer save(Customer customer);
}
