package com.bonga.web.group;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "groups")
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "group_id")
    protected Long id;

    @Column(length = 32)
    protected String name;
    protected String description;
    @Column(name = "max_members", nullable = false)
    protected Long maxMembers = 250L;
    @Column(name = "is_full", nullable = false)
    protected boolean full = false;
    @Column(name = "must_welcome", nullable = false)
    protected boolean mustWelcome = false;
}
