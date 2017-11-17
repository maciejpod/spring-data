package net.podolanski.springdatatutorial.dao;

import java.util.Date;

public class Order {

    public enum OrderStatus {
        NOT_COMPLETED, SEND, COMPLETED
    }

    private Long id;
    private User user;
    private Date orderDate;
    private Date sendDate;
    private Boolean paymentCompleted;
    private OrderStatus orderStatus;

    public Order(User user, Date orderDate, Date sendDate,
                 Boolean paymentCompleted, OrderStatus orderStatus) {
        this.user = user;
        this.orderDate = orderDate;
        this.sendDate = sendDate;
        this.paymentCompleted = paymentCompleted;
        this.orderStatus = orderStatus;
    }

    public Order() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public Boolean getPaymentCompleted() {
        return paymentCompleted;
    }

    public void setPaymentCompleted(Boolean paymentCompleted) {
        this.paymentCompleted = paymentCompleted;
    }

    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }
}