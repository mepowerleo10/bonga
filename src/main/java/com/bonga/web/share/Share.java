package com.bonga.web.share;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import com.bonga.web.post.Post;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
public class Share extends Post {
    @CreationTimestamp
    @Column(name = "shared_at", nullable = false)
    protected Date sharedAt;
}
