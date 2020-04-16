package com.bonga.web.message;

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

import lombok.Data;

@Data
@Entity
@Table(name = "messages")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "message_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "sender_id")
    protected User sender;

    @ManyToOne(optional = false)
    @JoinColumn(name = "receiver_id")
    protected User receiver;

    @CreationTimestamp
    @Column(name = "sent_at", nullable = false)
    protected Date sentAt;

    @Column(nullable = false)
    protected String text;
}
