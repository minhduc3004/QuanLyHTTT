package com.vn.viettel.DemoConnectSQLServer.Entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dbo.Xe")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Car {
    @Id
    @Column(name = "id_xe")
    private int id;

    @Column(name = "ten_xe")
    private String name;

    @Column(name = "hinhanh")
    private String image;

    @Column(name = "giaxe")
    private float price;

    @Column(name = "mota")
    private String description;

    @Column(name = "soluong")
    private int quantity;

    @Column(name = "dongxe")
    private String dongXe;

    @Column(name = "phankhucxe")
    private String phanKhuc;

    @Column(name = "mausac")
    private String color;

}
