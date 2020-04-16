package com.bonga.web.model.relation;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.bonga.web.model.embedded.UserPostKey;
import com.bonga.web.post.Post;
import com.bonga.web.user.User;
import com.bonga.web.variables.Interaction;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "post_interactions")
public class UserPostInteraction {
    @EmbeddedId
    protected UserPostKey id;

    @ManyToOne
    @MapsId("user_id")
    @JoinColumn(name = "user_id")
    protected User user;

    @ManyToOne
    @MapsId("post_id")
    @JoinColumn(name = "post_id")
    protected Post post;

    @CreationTimestamp
    @Column(name = "interacted_at")
    protected Date interactedAt;

    protected Interaction interaction;
}
