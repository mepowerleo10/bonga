package com.bonga.web.poll;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.bonga.web.user.User;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
@Table(name = "polls")
public class Poll {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "poll_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "owner_id")
    // @Column(name = "owner_id")
    protected User owner;

    @Column(length = 64, nullable = false)
    protected String title;
    protected String description;

    @Column(name = "option_0", nullable = false)
    protected String option0;
    @Column(name = "option_1", nullable = false)
    protected String option1;
    @Column(name = "option_2", nullable = false)
    protected String option2;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false)
    protected Date createdAt;

    @Temporal(TemporalType.DATE)
    @Column(name = "ends_at", nullable = false)
    protected Date endsAt;
}
