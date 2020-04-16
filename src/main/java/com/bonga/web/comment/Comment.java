package com.bonga.web.comment;

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
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comment_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "owner_id")
    protected User owner;

    @CreationTimestamp
    @Column(name = "made_at", nullable = false)
    protected Date madeAt;

    @Column(nullable = false)
    protected String text;
}
