package com.bonga.web.media;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import com.bonga.web.post.Post;
import com.bonga.web.user.User;
import lombok.Data;

@Data
@Entity
@Table(name = "media")
public class Media {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "media_id")
    protected Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "owner_id")
    protected User user;

    @ManyToOne(optional = true)
    @JoinColumn(name = "post_id")
    protected Post post;

    @Column(name = "mimetype", length = 32, nullable = false)
    protected String mimeType;
}
