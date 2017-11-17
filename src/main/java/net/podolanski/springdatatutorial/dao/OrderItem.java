package net.podolanski.springdatatutorial.dao;


import javax.persistence.*;


@Entity
@Table(name = "t_order_items")
@AssociationOverrides({
        @AssociationOverride(
                name="orderItemPk.order",
                joinColumns=@JoinColumn(name = "order_id")),
        @AssociationOverride(
                name="orderItemPk.item",
                joinColumns=@JoinColumn(name = "item_id"))
})
public class OrderItem {
    @EmbeddedId
    private OrderItemPk orderItemPk = new OrderItemPk();
    private Long quantity;

    public OrderItem() {
    }

    public OrderItem(OrderItemPk orderItemPk, Long quantity) {
        this.orderItemPk = orderItemPk;
        this.quantity = quantity;
    }

    public OrderItemPk getOrderItemPk() {
        return orderItemPk;
    }

    public void setOrderItemPk(OrderItemPk orderItemPk) {
        this.orderItemPk = orderItemPk;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }
}
