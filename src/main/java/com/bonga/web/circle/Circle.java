package com.bonga.web.circle;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "circles")
public class Circle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "circle_id")
    protected Long id;

    protected Float weight;

    @CreationTimestamp
    @Column(name = "created_at")
    protected Date createdAt;
}
