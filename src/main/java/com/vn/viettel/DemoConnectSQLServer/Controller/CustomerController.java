package com.vn.viettel.DemoConnectSQLServer.Controller;

import com.vn.viettel.DemoConnectSQLServer.Entity.Customer;
import com.vn.viettel.DemoConnectSQLServer.Repository.CustomerRepo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/customers")
public class CustomerController {
    private final CustomerRepo customerRepo;

    public CustomerController(CustomerRepo customerRepo) {
        this.customerRepo = customerRepo;
    }

    @GetMapping("/viewCustomers")
    public String viewCustomers(Model model) {
        model.addAttribute("customers", customerRepo.findAll());
        return "view-customers";
    }

    @GetMapping("/addCustomer")
    public String addCustomerView(Model model) {
        model.addAttribute("customer", new Customer());
        return "add-customer";
    }

    @PostMapping("/addCustomer")
    public RedirectView addCustomer(@ModelAttribute("customer") Customer customer, RedirectAttributes redirectAttributes) {
        final RedirectView redirectView = new RedirectView("/customers/addCustomer", true);
        Customer savedCustomer = customerRepo.save(customer);
        redirectAttributes.addFlashAttribute("savedCustomer", savedCustomer);
        redirectAttributes.addFlashAttribute("addCustomerSuccess", true);
        return redirectView;
    }
}
