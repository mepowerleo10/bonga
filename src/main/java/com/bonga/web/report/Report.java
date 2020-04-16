package com.bonga.web.report;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import com.bonga.web.user.User;
import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "reports")
public class Report {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "report_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "owner_id")
    // @Column(name = "owner_id")
    protected User owner;

    @CreationTimestamp
    @Column(name = "created_at")
    protected Date createdAt;

    protected String text;
}
