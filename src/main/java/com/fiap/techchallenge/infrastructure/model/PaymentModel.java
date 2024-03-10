package com.fiap.techchallenge.infrastructure.model;

import com.fiap.techchallenge.domain.entity.Payment;
import com.fiap.techchallenge.domain.entity.PaymentStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.annotations.UuidGenerator;

import java.math.BigDecimal;
import java.time.ZonedDateTime;

@Entity
@Table(name = "payments")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentModel {

    public static PaymentModel toPaymentModel(Payment payment) {
        return PaymentModel.builder()
                .id(payment.getId())
                .order(OrderModel.builder().id(payment.getOrderId()).build())
                .orderPrice(payment.getOrderPrice())
                .status(payment.getStatus())
                .createdAt(payment.getCreatedAt())
                .updatedAt(payment.getUpdatedAt())
                .build();
    }

    public static Payment toPayment(PaymentModel paymentModel) {
        return Payment.builder()
                .id(paymentModel.getId())
                .orderId(paymentModel.getOrder().getId())
                .orderPrice(paymentModel.getOrderPrice())
                .status(paymentModel.getStatus())
                .createdAt(paymentModel.getCreatedAt())
                .updatedAt(paymentModel.getUpdatedAt())
                .build();
    }

    @Id
    @GeneratedValue
    @UuidGenerator
    private String id;

    @OneToOne(targetEntity = OrderModel.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id", referencedColumnName = "id")
    private OrderModel order;

    private BigDecimal orderPrice;

    @Enumerated(EnumType.STRING)
    private PaymentStatus status;

    @CreationTimestamp
    private ZonedDateTime createdAt;

    @UpdateTimestamp
    private ZonedDateTime updatedAt;
}
