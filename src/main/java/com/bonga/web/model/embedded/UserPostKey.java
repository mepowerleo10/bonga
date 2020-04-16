package com.bonga.web.model.embedded;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Data;

@Data
@Embeddable
public class UserPostKey implements Serializable {

    private static final long serialVersionUID = -6440722024837695596L;

    @Column(name = "user_id")
    protected Long userId;

    @Column(name = "post_id")
    protected Long postId;

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }
}