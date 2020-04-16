package com.bonga.web.post;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.bonga.web.media.Media;
import com.bonga.web.model.relation.UserPostInteraction;
import com.bonga.web.user.User;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;

@Data
@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "post_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "owner_id")
    // @Column(name = "owner_id")
    protected User owner;

    @OneToMany(mappedBy = "id")
    protected List<Media> media = new ArrayList<>();

    @ElementCollection
    @CollectionTable(name = "tags", joinColumns = @JoinColumn(name = "post_id"))
    @Column(name = "tags", nullable = true)
    protected Set<String> tags = new HashSet<>();

    @CreationTimestamp
    @Column(name = "created_at", nullable = false)
    protected Date createdAt;

    @UpdateTimestamp
    @Column(name = "modified_at", nullable = false)
    protected Date modifiedAt;

    protected String text;
    @Column(name = "with_media")
    protected boolean withMedia;

    /* TODO: Add relational mappings for the posts table */

    @OneToMany(mappedBy = "post")
    protected Set<UserPostInteraction> interactions = new HashSet<>();

}
