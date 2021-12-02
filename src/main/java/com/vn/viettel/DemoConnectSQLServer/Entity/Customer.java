package com.vn.viettel.DemoConnectSQLServer.Entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDate;

@Entity
@Table(name = "dbo.KhachHang")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Customer {
    @Id
    @Column(name = "id_khachhang")
    private int id;

    @Column(name = "ten_khachhang")
    private String name;

    @Column(name = "ngaysinh")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateOfBirth;

    @Column(name = "sdt_khachhang")
    private String phone;

    @Column(name = "diachi_khachhang")
    private String address;

    @Column(name = "gioitinh")
    private int sex;

    @Column(name = "diemtichluy")
    private int score;

    @Column(name = "trangthai")
    private int status;

    @Column(name = "mota")
    private String description;
}
