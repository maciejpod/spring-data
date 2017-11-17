package net.podolanski.springdatatutorial.dao;

import java.math.BigDecimal;

public class Item {
    private Long id;
    private String name;
    private BigDecimal price;
    private BigDecimal weight;
    private Category category;

    public Item() {
    }

    public Item(String name, BigDecimal price, BigDecimal weight, Category category) {
        this.name = name;
        this.price = price;
        this.weight = weight;
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}